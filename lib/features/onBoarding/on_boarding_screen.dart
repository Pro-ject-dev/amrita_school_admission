import 'package:amrita_vidhyalayam_admission/constants/app_colors.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_images.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: Column(children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 15.h),
          child: Row(
            children: [
              SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(AppImages.logo)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:8.0),
          child: SizedBox(
            height: 400.h,
            width: double.infinity,
            child: Image.asset(AppImages.loginTop,fit: BoxFit.fill,)),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Welcome Admission ",style: AppTextStyles.headlineLarge,),
                 SizedBox(height: 10.h,),
            Text("Admissions made simple and seamless, guiding you from application to admission with ease.",style: AppTextStyles.titleMedium,textAlign: TextAlign.center,),
                    SizedBox(height: 20.h,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:8.0),
                        child: SizedBox(
                         width:359.w,
                      height: 55.h,
                          child: ElevatedButton(
                            onPressed: () async {
                              context.go("/login");
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero, // important for gradient
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              elevation: 2,
                              backgroundColor: Colors.transparent, // remove default color
                              shadowColor: Colors.transparent,
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF0B3160), // Purple
                                    Color(0xFF1765C6), // Blue
                                  ],
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
                      )
              ],
            ),
          ),
         
      ],),

      
    );
  }
}