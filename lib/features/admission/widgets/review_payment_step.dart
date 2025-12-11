import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidyalyam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidyalyam_admission/features/payment/widgets/payment_method_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../viewmodel/admission_form_view_model.dart';

class ReviewPaymentStep extends ConsumerWidget {
  final AdmissionFormModel formData;
  final VoidCallback? onEditApplicant;
  final VoidCallback? onEditParent;

  const ReviewPaymentStep({
    super.key,
    required this.formData,
    this.onEditApplicant,
    this.onEditParent,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formData.isSubmitted ? 'Review & Payment' : "Review Details",
            style: AppTextStyles.headlineMedium.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24.h),

          _buildSectionCard(
            context,
            title: 'Student Details',
            onEdit: onEditApplicant,
            children: [
              _buildRow('Full Name', formData.applicantDetails?.name ?? "-"),
              _buildRow(
                'Date of Birth',
                formData.applicantDetails?.dob.toString().split(' ')[0] ?? "-",
              ),
              _buildRow('Gender', formData.applicantDetails?.gender ?? "-"),
            ],
          ),
          SizedBox(height: 16.h),

          _buildSectionCard(
            context,
            title: 'Parent/Guardian Info',
            onEdit: onEditParent,
            children: [
              _buildRow('Name', formData.parentContact?.primaryName ?? "-"),
              _buildRow(
                'Contact No.',
                formData.parentContact?.primaryMobile ?? "-",
              ),
              _buildRow(
                'Address',
                formData.address?.address ?? "-",
                isMultiLine: true,
              ),
            ],
          ),
          SizedBox(height: 16.h),

          if (formData.isSubmitted)
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Summary',
                    style: AppTextStyles.titleMedium.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8.h),
                  _buildSummaryRow('Admission Fee', '\₹ 500.00'),
                  Divider(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Due',
                        style: AppTextStyles.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\₹ 500.00',
                        style: AppTextStyles.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          SizedBox(height: 32.h),

          SizedBox(
            width: double.infinity,
            height: 56.h,
            child: _buildActionButton(context, ref),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, WidgetRef ref) {
    if (!formData.isSubmitted) {
      return ElevatedButton(
        onPressed: () => _showConfirmationDialog(context, ref),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text('Register', style: AppTextStyles.button),
      );
    } else if (formData.hasUnsavedChanges) {
      return ElevatedButton(
        onPressed: () => _processPayment(context, ref, isUpdate: true),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text('Update', style: AppTextStyles.button),
      );
    } else {
      return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentMethodSelection(
                onDirectPay: () => _pay(context, ref),
                onGetPayUrl: () => _pay(context, ref),
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.success,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text('Pay Now', style: AppTextStyles.button),
      );
    }
  }

  Future<void> _showConfirmationDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          clipBehavior: Clip.hardEdge,
          title: const Text('Confirm Registration'),
          content: const Text(
            'Are you sure you want to register? Please ensure all details are correct before proceeding.',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              child: const Text('Register'),
              onPressed: () async{
               Navigator.of(dialogContext).pop();
               await _processPayment(context, ref, isSave: true);
              },
            ),
          ],
        );
      },
    );
  }

 Future<void> _processPayment(
  BuildContext context,
  WidgetRef ref, {
  bool isSave = false,
  bool isUpdate = false,
}) async {
  
  showLoader(context);

  try {
    if (isUpdate) {
      await ref.read(admissionFormProvider.notifier).updateForm();
    } else {
      await ref.read(admissionFormProvider.notifier).submitForm();
    }

    Navigator.pop(context); // close loader

    if (isSave) {
      showMessage(context, 'Registration complete! Log in with your mobile number');
      ref.read(admissionFormProvider.notifier).clearForm();
      context.go('/login');
    } else {
      showMessage(context, 'Admission Form Updated Successfully !');
    }

  } catch (e) {
    Navigator.pop(context); // close loader
    showMessage(context, 'Submission failed: $e', isError: true);
  }
}

void showLoader(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => const Center(child: CircularProgressIndicator()),
  );
}

void showMessage(BuildContext context, String msg, {bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(msg),
      backgroundColor: isError ? Colors.red : Colors.black,
    ),
  );
}

  Future<void> _pay(BuildContext context, WidgetRef ref) async {
    if (context.mounted) {
      context.go('/payment-success');
    }
  }

  Widget _buildSectionCard(
    BuildContext context, {
    required String title,
    required List<Widget> children,
    VoidCallback? onEdit,
  }) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyles.titleMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (onEdit != null)
                InkWell(
                  onTap: onEdit,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      'Edit',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Divider(height: 24.h),
          ...children,
        ],
      ),
    );
  }

  Widget _buildRow(String label, String value, {bool isMultiLine = false}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: isMultiLine
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFileRow(String label, String fileName) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Icon(Icons.check_circle, color: AppColors.success, size: 16.sp),
          SizedBox(width: 4.w),
          Text(
            fileName,
            style: AppTextStyles.bodyMedium.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        Text(
          value,
          style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
