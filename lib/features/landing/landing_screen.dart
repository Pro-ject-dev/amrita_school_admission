import 'package:amrita_vidhyalayam_admission/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../constants/app_text_styles.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.only(left:28.0.sp),
                  child: SizedBox(
                    width:359.w,
                      height: 55.h,
                    child: ElevatedButton(
                      
                      onPressed: () async {
                        context.go("/admission");
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        elevation: 2,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF0B3160), Color(0xFF1765C6)],
                          ),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5.0.sp),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Get Started',
                              style: AppTextStyles.button.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 307.h,
            width: 403.w,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AppImages.logoWhite,
                        height: 100.h,
                        width: 100.w,
                      ),
                      Icon(LucideIcons.circleUser, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Text(
                        'Amrita School Admission',
                        style: AppTextStyles.displayMedium.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Welcome to Amrita Admissions Start Your Application',
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // SizedBox(height: 120.h,),
          SizedBox(height: 40.h),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Why Choose Amrita?',
                      style: AppTextStyles.titleLarge.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24.h),
                buildFeatureItem('Holistic Education'),
                buildFeatureItem('State-of-the-art Infrastructure'),
                buildFeatureItem('Experienced Faculty'),
                buildFeatureItem('Strong Values & Ethics'),
              ],
            ),
          ),
          Spacer(),
          Image.asset(AppImages.admissionBottom),
        ],
      ),
    );
  }
}

Widget buildFeatureItem(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 12.h),
    child: Row(
      children: [
        Container(
          width: 6.w,
          height: 6.w,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          text,
          style: AppTextStyles.bodyLarge.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
