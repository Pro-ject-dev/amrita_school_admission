import 'package:amrita_vidhyalayam_admission/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidhyalayam_admission/features/login/viewmodel/login_view_model.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _mobileController = TextEditingController();

  @override
  void dispose() {
    _mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top Right Illustration
          Positioned(
            top: 50.h,
            right: 0,
            child: Image.asset(
              AppImages.loginTop,
              width: 200.w,
              fit: BoxFit.contain,
            ),
          ),
          
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  // Logo
                  Row(
                    children: [
                      // Assuming logo is small or text based on design
                      // If logo image exists:
                      // Image.asset(AppImages.logo, height: 40.h),
                      // Or Text:
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AMRITA',
                            style: AppTextStyles.bodyLarge.copyWith(
                              color: const Color(0xFF0D47A1),
                              fontWeight: FontWeight.bold,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            'VIDYALAYAM',
                            style: AppTextStyles.bodySmall.copyWith(
                              color: const Color(0xFF0D47A1),
                              letterSpacing: 1.5,
                              height: 1.0,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 100.h), // Space for illustration
                  
                  Text(
                    'Welcome Back!',
                    style: AppTextStyles.displayMedium.copyWith(
                      color: const Color(0xFF0D47A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'log in with your phone number',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  
                  SizedBox(height: 40.h),
                  
                  Text(
                    'Enter Your Phone number',
                    style: AppTextStyles.bodyMedium.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextField(
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: const BorderSide(color: Color(0xFF0D47A1)),
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 40.h),
                  
                  SizedBox(
                    width: double.infinity,
                    height: 56.h,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_mobileController.text.isNotEmpty) {
                          await ref.read(loginViewModelProvider.notifier).login(_mobileController.text);
                          if (context.mounted) {
                             context.go('/admission');
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D47A1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        elevation: 2,
                      ),
                      child: Text(
                        'Login',
                        style: AppTextStyles.button.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 24.h),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to Signup
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: AppTextStyles.bodyMedium.copyWith(color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Signup',
                              style: AppTextStyles.bodyMedium.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Bottom decoration
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              AppImages.loginBottom,
              fit: BoxFit.cover,
              height: 120.h,
            ),
          ),
        ],
      ),
    );
  }
}
