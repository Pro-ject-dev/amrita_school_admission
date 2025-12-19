import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_sizes.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidyalyam_admission/core/shared/helpers/error_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CustomErrorScreen extends StatelessWidget {
  final FlutterErrorDetails? errorDetails;
  final VoidCallback? onReload;

  const CustomErrorScreen({
    super.key,
    this.errorDetails,
    this.onReload,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.p24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(24.w),
                decoration: BoxDecoration(
                  color: AppColors.error.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LucideIcons.messageCircleWarning300,
                  size: 64.sp,
                  color: AppColors.error,
                ),
              ),
              SizedBox(height: AppSizes.p24),
              Text(
                "Oops! Something went wrong",
                style: AppTextStyles.headlineMedium.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSizes.p16),
              Text(
                errorDetails != null 
                    ? ErrorHelper.getErrorMessage(errorDetails!.exception)
                    : "We encountered an unexpected error. Please try again later.",
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSizes.p32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                     // If onReload is provided, use it. 
                     // Otherwise, try to restart the app or just pop if can pop.
                     // For global errors, reloading might mean going to splash.
                     if (onReload != null) {
                       onReload!();
                     } else {
                       // Default simple behavior: try to navigate to root
                       Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
                     }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.r12),
                    ),
                  ),
                  child: Text(
                    "Back to Home",
                     style: AppTextStyles.button,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
