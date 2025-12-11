import 'dart:developer';

import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(LucideIcons.x, color: Colors.black)),
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
                style: TextStyle(
                  fontSize: 20.sp, 
                  fontWeight: FontWeight.w600
                ),
              ),
          
              SizedBox(height: 12.h),
          
              Text(
                'Enter the code sent to your number:\n+91 XXXXX 12345',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, color: Colors.black87),
              ),
          
              SizedBox(height: 35.h),
          
              Pinput(
                keyboardType: TextInputType.number,
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColors.primary),
                  ),
                ),
                onCompleted: (pin) {
                  print("OTP Entered: $pin");
                },
              ),
          
              SizedBox(height: 25.h),
          
              /// Resend Text
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Didn't get the code? ",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = ()=> log('resend done '),
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
