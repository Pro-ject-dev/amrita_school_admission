import 'dart:developer';

import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/features/login/viewmodel/login_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends ConsumerWidget {
  final String mobileNumber;
  OtpScreen({super.key, required this.mobileNumber});

  final defaultPinTheme = PinTheme(
    width: 55.w,
    height: 60.h,
    textStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(color: Colors.grey),
    ),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(LucideIcons.x, color: Colors.black),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),

              Text(
                'Verify your number',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 12.h),

              Text(
                'Enter the code sent to your number:\n+91 $mobileNumber',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, color: Colors.black87),
              ),

              SizedBox(height: 35.h),

              Pinput(
                keyboardType: TextInputType.number,
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColors.primary),
                  ),
                ),
                onCompleted: (pin) async {
                  print("OTP Entered: $pin");
                  final success = await ref
                      .read(loginProvider.notifier)
                      .verifyOtp(mobileNumber, pin);
                  if (success) {
                    await ref
                        .read(loginProvider.notifier)
                        .fetchStudentApplicant(mobileNumber);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("OTP verified successfully !")),
                    );
                    if (context.mounted) {
                      context.go('/landing');
                    }
                  } else {
                    if (context.mounted) {
                      final state = ref.read(loginProvider);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.error ?? "Invalid OTP")),
                      );
                    }
                  }
                },
              ),

              SizedBox(height: 25.h),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Didn't get the code? ",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          log('resend done ');
                          await ref
                              .read(loginProvider.notifier)
                              .sendOtp(mobileNumber);
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('OTP Resent!')),
                            );
                          }
                        },
                      text: "Resend it",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
