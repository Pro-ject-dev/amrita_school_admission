import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_strings.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_sizes.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_colors.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidhyalayam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/viewmodel/admission_form_view_model.dart';
import 'package:amrita_vidhyalayam_admission/features/payment/widgets/payment_method_selection.dart';
import 'package:url_launcher/url_launcher.dart';

class ReviewPaymentStep extends ConsumerWidget {
  final AdmissionFormModel formData;

  const ReviewPaymentStep({
    super.key,
    required this.formData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Review & Payment', style: AppTextStyles.headlineMedium.copyWith(fontWeight: FontWeight.bold)),
          SizedBox(height: 24.h),
          
          _buildSectionCard(
            context,
            title: 'Student Details',
            children: [
              _buildRow('Full Name', formData.applicantDetails?.name ?? "-"),
              _buildRow('Date of Birth', formData.applicantDetails?.dob.toString().split(' ')[0] ?? "-"),
              _buildRow('Gender', formData.applicantDetails?.gender ?? "-"),
            ],
          ),
          SizedBox(height: 16.h),
          
          _buildSectionCard(
            context,
            title: 'Parent/Guardian Info',
            children: [
              _buildRow('Name', formData.parentContact?.primaryName ?? "-"),
              _buildRow('Contact No.', formData.parentContact?.primaryMobile ?? "-"),
              _buildRow('Address', formData.address?.address ?? "-", isMultiLine: true),
            ],
          ),
          SizedBox(height: 16.h),
          
          _buildSectionCard(
            context,
            title: 'Document Uploads',
            children: [
              _buildFileRow('Birth Certificate', 'uploaded.pdf'),
              _buildFileRow('Previous Marksheet', 'marksheet.png'),
            ],
          ),
          
          SizedBox(height: 16.h),
          
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payment Summary', style: AppTextStyles.titleMedium.copyWith(fontWeight: FontWeight.bold)),
                Divider(height: 24.h),
                _buildSummaryRow('Application Fee', '\$100.00'),
                SizedBox(height: 8.h),
                _buildSummaryRow('Admission Fee', '\$500.00'),
                Divider(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Due', style: AppTextStyles.titleMedium.copyWith(fontWeight: FontWeight.bold)),
                    Text('\$600.00', style: AppTextStyles.titleMedium.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          
          SizedBox(height: 32.h),
          
          SizedBox(
            width: double.infinity,
            height: 56.h,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethodSelection(
                      onDirectPay: () => _processPayment(context, ref),
                      onGetPayUrl: () => _processPayment(context, ref), // Mock same behavior
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
              ),
              child: Text('Pay Now', style: AppTextStyles.button),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _processPayment(BuildContext context, WidgetRef ref) async {
    // Mock Payment Logic
    await ref.read(admissionFormViewModelProvider.notifier).submitForm();
    
    // Mock Payment Success
    const paymentId = 'PAY_123456789';
    ref.read(admissionFormViewModelProvider.notifier).markPaymentComplete(paymentId);
    
    // Send WhatsApp Link (Mock)
    final mobile = formData.parentContact?.primaryMobile ?? '';
    if (mobile.isNotEmpty) {
       final message = 'Admission Successful! Payment ID: $paymentId. Download receipt: https://example.com/receipt/$paymentId';
       final url = 'https://wa.me/$mobile?text=${Uri.encodeComponent(message)}';
       if (await canLaunchUrl(Uri.parse(url))) {
         await launchUrl(Uri.parse(url));
       }
    }

    if (context.mounted) {
      context.go('/payment-success');
    }
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required List<Widget> children}) {
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
              Text(title, style: AppTextStyles.titleMedium.copyWith(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text('Edit', style: AppTextStyles.bodyMedium.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold)),
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
        crossAxisAlignment: isMultiLine ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Text(label, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary))),
          Expanded(
            flex: 3, 
            child: Text(
              value, 
              style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w500),
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
          Expanded(child: Text(label, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary))),
          Icon(Icons.check_circle, color: AppColors.success, size: 16.sp),
          SizedBox(width: 4.w),
          Text(fileName, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
  
  Widget _buildSummaryRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary)),
        Text(value, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
