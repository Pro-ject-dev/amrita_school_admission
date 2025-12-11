import 'package:amrita_vidyalyam_admission/features/login/viewmodel/login_view_model.dart';
import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_images.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../admission/viewmodel/admission_form_view_model.dart';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top Right Illustration
          Positioned(
            top: 50.h,
            right: 0,
            child: Image.asset(
              AppImages.loginTop,
              width: 167.w,
              height: 195.h,
              fit: BoxFit.contain,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo
                  Row(
                    children: [
                      SizedBox(
                        width: 100.w,
                        height: 100.h,
                        child: Image.asset(AppImages.logo),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  Text(
                    'Welcome Back!',
                    style: AppTextStyles.displayMedium.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'log in with your phone number',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
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
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
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

                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 359.w,
                      height: 55.h,
                      child: ElevatedButton(
                        onPressed: () async {
                           if (_mobileController.text.isNotEmpty) {
                             await ref.read(loginProvider.notifier).login(_mobileController.text);
                             
                             final state = ref.read(loginProvider);
                             if (state.error != null) {
                               if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(state.error!)),
                                );
                               }
                             } else {
                               if (context.mounted) {
                                 context.go("/landing");
                               }
                             }
                           } else {
                             ScaffoldMessenger.of(context).showSnackBar(
                               const SnackBar(content: Text("Please enter mobile number")),
                             );
                           }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
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
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Login',
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

                  SizedBox(height: 24.h),
                  Center(
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Not registered yet?  ",
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: Colors.black54,
                          ),
                          children: [
                            TextSpan(
                              text: 'Register Now',
                              style: AppTextStyles.bodyMedium.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                    ref.read(admissionFormProvider.notifier).clearForm();
                                  context.go("/landing");
                                },
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

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(AppImages.loginBottom, fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
