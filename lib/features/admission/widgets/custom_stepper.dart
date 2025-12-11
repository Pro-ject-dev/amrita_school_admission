import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomStepper extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const CustomStepper({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Row(
        children: List.generate(totalSteps * 2 - 1, (index) {
          if (index.isEven) {
            // Step Circle
            final stepIndex = index ~/ 2;
            final isActive = stepIndex <= currentStep;
            final isCurrent = stepIndex == currentStep;
            
            return Container(
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? AppColors.primary : AppColors.stepperInactive,
              ),
              alignment: Alignment.center,
              child: Text(
                '${stepIndex + 1}',
                style: AppTextStyles.labelLarge.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else {
            // Connector Line
            final stepIndex = (index - 1) ~/ 2;
            final isActive = stepIndex < currentStep;
            
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  height: 2.h,
                  color: isActive ? AppColors.primary : AppColors.stepperInactive,
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
