import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_colors.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_images.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background/Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 350.h,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF0D47A1), // Dark Blue
                    Color(0xFF1976D2), // Blue
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Logo Placeholder or Text
                          Row(
                            children: [
                              // If you have a logo image, use Image.asset(AppImages.logo)
                              // For now using text/icon as placeholder if logo might not load perfectly
                              const Icon(Icons.school, color: Colors.white, size: 30),
                              SizedBox(width: 8.w),
                              Text(
                                'AMRITA\nVIDYALAYAM',
                                style: AppTextStyles.bodySmall.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.0,
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.account_circle, color: Colors.white, size: 30),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        'Amrita School Admission',
                        style: AppTextStyles.displayMedium.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Welcome to Amrita Admissions Start Your Application',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Content
          Positioned.fill(
            top: 300.h,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),
                    Text(
                      'Why Choose Amrita?',
                      style: AppTextStyles.titleLarge.copyWith(
                        color: const Color(0xFF0D47A1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    _buildFeatureItem('Holistic Education'),
                    _buildFeatureItem('State-of-the-art Infrastructure'),
                    _buildFeatureItem('Experienced Faculty'),
                    _buildFeatureItem('Strong Values & Ethics'),
                    
                    SizedBox(height: 40.h),
                    
                    // Illustration
                    Center(
                      child: Image.asset(
                        AppImages.admissionBottom, // Using available asset
                        height: 200.h,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 200.h,
                            color: Colors.grey[200],
                            child: const Center(child: Text('Illustration Placeholder')),
                          );
                        },
                      ),
                    ),
                    
                    SizedBox(height: 100.h), // Space for bottom button
                  ],
                ),
              ),
            ),
          ),

          // Bottom Button
          Positioned(
            bottom: 40.h,
            left: 24.w,
            right: 24.w,
            child: SizedBox(
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/admission');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D47A1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  elevation: 4,
                ),
                child: Text(
                  'Get Started',
                  style: AppTextStyles.button.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Container(
            width: 6.w,
            height: 6.w,
            decoration: const BoxDecoration(
              color: Color(0xFF0D47A1),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 12.w),
          Text(
            text,
            style: AppTextStyles.bodyLarge.copyWith(
              color: const Color(0xFF0D47A1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
