
import 'dart:developer';

import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidyalyam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/student_applicant_response.dart';
import 'package:amrita_vidyalyam_admission/features/payment/widgets/payment_method_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                  if (formData.feeData.isNotEmpty) ...[
                    ...formData.feeData.map((fee) => _buildSummaryRow(
                          fee.title,
                          fee.feeMode,
                          '₹ ${fee.netAmount.toStringAsFixed(2)}',
                          status: fee.status,
                        )),
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
                          '₹ ${formData.feeData.where((e) => e.status == 'Pending').fold(0.0, (sum, item) => sum + item.netAmount).toStringAsFixed(2)}',
                          style: AppTextStyles.titleMedium.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ]
                  ]
              ),
            ),
            
           if (formData.isSubmitted && (formData.paymentId?.isNotEmpty ?? false))
             Padding(
               padding: EdgeInsets.only(top: 16.h),
               child: Center(
                 child: TextButton.icon(
                   onPressed: () {
                     context.push('/transaction-history', extra: formData.userId );
                   },
                   icon: const Icon(Icons.history, color: AppColors.primary),
                   label: Text(
                     'View Transaction History',
                     style: AppTextStyles.titleMedium.copyWith(
                       color: AppColors.primary,
                       decoration: TextDecoration.underline,
                     ),
                   ),
                 ),
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
      return Visibility(
        visible: formData.feeData
          .where((e) => e.status == "Pending")
          .fold<double>(0, (sum, e) => sum + (e.netAmount )) > 0,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PaymentMethodSelection(
                  onDirectPay: () => _payDirect(context, ref),
                  onGetPayUrl: () => _getPayUrl(context, ref),
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
        ),
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
    // Clear any existing snackbars first
    ScaffoldMessenger.of(context).clearSnackBars();
    
    // Small delay to ensure navigation animations don't hide the snackbar
    Future.delayed(const Duration(milliseconds: 300), () {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(msg),
            backgroundColor: isError ? Colors.red : Colors.black,
            behavior: SnackBarBehavior.floating, // Visible even if FAB/bottom nav exists
            duration: const Duration(seconds: 3),
          ),
        );
      }
    });
  }

  Future<void> _payDirect(BuildContext context, WidgetRef ref) async {
    final navigator = Navigator.of(context);
    
    if (context.mounted) {
       // Close selection dialog
    }
    navigator.pop(); 

    showLoader(context);
    
    try {
      final result = await ref.read(admissionFormProvider.notifier).startPayment();
      
      navigator.pop(); 
      

      final status = result['result'];

      if (status == 'payment_successfull' || status == 'success') {
         
         // Determine valid context for navigation
         BuildContext? navContext;
         if (context.mounted) {
           navContext = context;
         } else if (navigator.mounted) {
           navContext = navigator.context;
         }

         if (navContext == null) return;

         final paymentResponse = result['payment_response'];
         final txnid = paymentResponse?['txnid'] ?? result['txnid'] ?? 'Unknown';
         final date = paymentResponse?['addedon'] ?? DateTime.now().toString().split(' ')[0];
         
         navContext.go('/payment-success', extra: {
           'txnid': txnid,
           'date': date,
         });
      } else if (status == 'user_cancelled') {
        
        await Future.delayed(const Duration(milliseconds: 500));
        BuildContext? validContext;
        if (context.mounted) {
          validContext = context;
        } else if (navigator.mounted) {
          validContext = navigator.context;
        }

        if (validContext != null) {
          showMessage(validContext, "Payment Cancelled");
        }
      } else {
         if (context.mounted) {
            showMessage(context, "Payment Failed: ${result['error_msg'] ?? status}", isError: true);
         }
      }
    } catch (e) {
      try {
         navigator.pop();
      } catch (_) {}
      
      if (context.mounted) {
        showMessage(context, "Payment Error: $e", isError: true);
      }
    }
  }

  Future<void> _getPayUrl(BuildContext context, WidgetRef ref) async {
    final navigator = Navigator.of(context);
    // Close dialog logic
     if (context.mounted) {
    }
    navigator.pop(); 

    showLoader(context);
    
    try {
      final paymentUrl = await ref.read(admissionFormProvider.notifier).getPaymentLink();
      
      navigator.pop(); // Close loader
      
      if (paymentUrl.isNotEmpty && context.mounted) {
         _showPaymentLinkDialog(context, paymentUrl);
      }

    } catch (e) {
      try {
         navigator.pop(); 
      } catch (_) {}
      
      if (context.mounted) {
        showMessage(context, "Error fetching link: $e", isError: true);
      }
    }
  }

  void _showPaymentLinkDialog(BuildContext context, String url) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Payment Link"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Click the button below to copy the payment link:"),
            SizedBox(height: 16.h),
            SelectableText(
              url,
              style: const TextStyle(color: Colors.blue),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
       
               Clipboard.setData(ClipboardData(text: url));
               showMessage(context, "Link copied to clipboard");
            },
            icon: const Icon(Icons.copy),
            label: const Text("Copy Link"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
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

    Widget _buildSummaryRow(String label,String mode, String value, {String? status}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    label,
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                   Text(
                   " - ("+ mode+")",
                    style: AppTextStyles.bodyMedium.copyWith(
                     
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp
                    ),
                  ),
                ],
              ),
              if (status != null)
                 Text(
                   status,
                   style: TextStyle(
                     fontSize: 12.sp,
                     color: status == 'Pending' ? Colors.orange : Colors.green,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
            ],
          ),
          Text(
            value,
            style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
