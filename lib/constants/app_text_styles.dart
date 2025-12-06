import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get displayLarge => GoogleFonts.outfit(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle get displayMedium => GoogleFonts.outfit(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle get headlineLarge => GoogleFonts.outfit(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle get headlineMedium => GoogleFonts.outfit(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle get titleLarge => GoogleFonts.outfit(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle get titleMedium => GoogleFonts.outfit(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle get bodyLarge => GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static TextStyle get bodyMedium => GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );
  
  static TextStyle get labelLarge => GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  
  static TextStyle get button => GoogleFonts.outfit(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
