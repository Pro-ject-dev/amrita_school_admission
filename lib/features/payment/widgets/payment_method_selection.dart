import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PaymentMethodSelection extends StatelessWidget {
  final VoidCallback onDirectPay;
  final VoidCallback onGetPayUrl;

  const PaymentMethodSelection({
    super.key,
    required this.onDirectPay,
    required this.onGetPayUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Select Payment Method',
          style: AppTextStyles.titleLarge.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          children: [
            Text(
              "Choose how you'd like to complete the payment for your application.",
              style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
            ),
            SizedBox(height: 24.h),
            _buildOption(
              context,
              icon: Icons.credit_card,
              title: 'Direct Pay',
              subtitle: 'Pay now using a credit/debit card.',
              onTap: onDirectPay,
            ),
            SizedBox(height: 16.h),
            _buildOption(
              context,
              icon: Icons.link,
              title: 'Get Pay URL',
              subtitle: 'Receive a secure link to pay later.',
              onTap: onGetPayUrl,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(icon, color: AppColors.primary),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.titleMedium.copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4.h),
                  Text(subtitle, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary, fontSize: 12.sp)),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.textSecondary),
          ],
        ),
      ),
    );
  }
}
