import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_strings.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_sizes.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_colors.dart';
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              Center(
                child: Text(
                  'Login',
                  style: AppTextStyles.displayMedium.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  'Welcome back! Please enter your details.',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              SizedBox(height: 48.h),
              
              Text(
                'Please enter your mobile number to receive an OTP.',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              SizedBox(height: 32.h),
              
              Text(
                'Mobile Number',
                style: AppTextStyles.titleMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              TextField(
                controller: _mobileController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your mobile number',
                  hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.textHint),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: AppColors.primary),
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
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Send OTP',
                    style: AppTextStyles.button.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 24.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'New user? ',
                    style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
                    children: [
                      TextSpan(
                        text: 'Register Here',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
