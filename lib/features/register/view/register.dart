// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';

// import '../../../constants/app_colors.dart';
// import '../../../constants/app_images.dart';
// import '../../../constants/app_text_styles.dart';

// class RegisterScreen extends StatelessWidget {
//   final TextEditingController mobileController = TextEditingController();
//   final TextEditingController mailController = TextEditingController();
//   final TextEditingController nameController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           // Top Right Illustration
//           Positioned(
//             top: 50.h,
//             right: 0,
//             child: Image.asset(
//               AppImages.loginTop,
//               width: 167.w,
//               height: 195.h,
//               fit: BoxFit.contain,
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: SizedBox(
//               height: 240.h,
//               child: Image.asset(AppImages.loginBottom, fit: BoxFit.fill)),
//           ),

//           SafeArea(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Logo
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 100.w,
//                         height: 100.h,
//                         child: Image.asset(AppImages.logo),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: 20.h), // Space for illustration

//                   Text(
//                     'Welcome Back!',
//                     style: AppTextStyles.displayMedium.copyWith(
//                       color: AppColors.primary,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24.sp,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   Text(
//                     'Register with your mobile number',
//                     style: AppTextStyles.bodyMedium.copyWith(
//                       color: Colors.black87,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),

//                   SizedBox(height: 20.h),

//                   Text(
//                     'Name',
//                     style: AppTextStyles.bodyMedium.copyWith(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   TextField(
//                     controller: mobileController,
//                     keyboardType: TextInputType.phone,
//                     decoration: InputDecoration(
//                       hintText: '',
//                       contentPadding: EdgeInsets.symmetric(
//                         horizontal: 16.w,
//                         vertical: 16.h,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: const BorderSide(color: Color(0xFF0D47A1)),
//                       ),
//                     ),
//                   ),
//                    SizedBox(height: 10.h),

//                   Text(
//                     'Mobile Number',
//                     style: AppTextStyles.bodyMedium.copyWith(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   TextField(
//                     controller: mobileController,
//                     keyboardType: TextInputType.phone,
//                     decoration: InputDecoration(
//                       hintText: '',
//                       contentPadding: EdgeInsets.symmetric(
//                         horizontal: 16.w,
//                         vertical: 16.h,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: const BorderSide(color: Color(0xFF0D47A1)),
//                       ),
//                     ),
//                   ),
//  SizedBox(height: 10.h),

//                   Text(
//                     'Email',
//                     style: AppTextStyles.bodyMedium.copyWith(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   TextField(
//                     controller: mobileController,
//                     keyboardType: TextInputType.phone,
//                     decoration: InputDecoration(
//                       hintText: '',
//                       contentPadding: EdgeInsets.symmetric(
//                         horizontal: 16.w,
//                         vertical: 16.h,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.r),
//                         borderSide: const BorderSide(color: Color(0xFF0D47A1)),
//                       ),
//                     ),
//                   ),


//                   SizedBox(height: 30.h),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8.0),
//                     child: SizedBox(
//                       width:359.w,
//                       height: 55.h,
//                       child: ElevatedButton(
//                         onPressed: () async {
//                           context.go("/login");
//                         },
//                         style: ElevatedButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30.r),
//                           ),
//                           elevation: 2,
//                           backgroundColor: Colors.transparent,
//                           shadowColor: Colors.transparent,
//                         ),
//                         child: Ink(
//                           decoration: BoxDecoration(
//                             gradient: const LinearGradient(
//                               colors: [Color(0xFF0B3160), Color(0xFF1765C6)],
//                             ),
//                             borderRadius: BorderRadius.circular(30.r),
//                           ),
//                           child: Container(
//                             alignment: Alignment.center,
//                             child: Text(
//                               'Register',
//                               style: AppTextStyles.button.copyWith(
//                                 fontSize: 18.sp,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 24.h),
       
//                   Center(
//                     child: GestureDetector(
//                       onTap: () {
//                         // Navigate to Signup
//                       },
//                       child: RichText(
//                         text: TextSpan(
//                           text: "Already registered ?  ",
//                           style: AppTextStyles.bodyMedium.copyWith(
//                             color: Colors.black54,
//                           ),
//                           children: [
//                             TextSpan(
//                               text: 'Login with mobile number',
//                               style: AppTextStyles.bodyMedium.copyWith(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               recognizer: TapGestureRecognizer()
//                                 ..onTap = () {
//                                   context.go("/login");
//                                 },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

          
//         ],
//       ),
//     );
//   }
// }
