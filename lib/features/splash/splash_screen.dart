import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_colors.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_images.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_strings.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidhyalayam_admission/features/splash/splash_view_model.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger the check
    ref.read(splashViewModelProvider);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(splashViewModelProvider, (previous, next) {
      next.when(
        data: (isLoggedIn) {
          // if (isLoggedIn) {
          //   context.go('/admission');
          // } else {
            context.go('/login');
         // }
        },
        error: (e, st) => context.go('/login'), // Fallback
        loading: () {},
      );
    });

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for Logo
            // Image.asset(AppImages.logo, width: 150), 
            const Icon(Icons.school, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            Text(
              AppStrings.welcomeMessage,
              style: AppTextStyles.headlineMedium.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
