import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Dark Navy Blue from design
  static const Color primary = Color(0xFF0B3160); 
  
  // Secondary / Accent
  static const Color secondary = Color(0xFF1E88E5);
  
  // Backgrounds
  static const Color background = Color(0xFFF8F9FA); // Light grey/white background
  static const Color surface = Colors.white;
  
  // Text
  static const Color textPrimary = Color(0xFF1A1C1E);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textHint = Color(0xFF9E9E9E);
  
  // Borders & Dividers
  static const Color border = Color(0xFFE0E0E0);
  
  // Status
  static const Color success = Color(0xFF2E7D32); // Green check
  static const Color error = Color(0xFFD32F2F);
  
  // Specific UI elements
  static const Color stepperInactive = Color(0xFFD1D5DB);
  static const Color stepperActive = primary;
  static const Color cardBackground = Colors.white;
  static const Color inputFill = Colors.white;
}
