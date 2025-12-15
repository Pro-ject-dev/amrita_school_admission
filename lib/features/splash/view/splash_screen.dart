import 'dart:developer';
import 'package:amrita_vidyalyam_admission/constants/app_images.dart';
import 'package:amrita_vidyalyam_admission/features/splash/viewmodel/splash_view_model.dart';
import 'package:amrita_vidyalyam_admission/features/login/viewmodel/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _primaryController;
  late AnimationController _shimmerController;
  late AnimationController _particlesController;
  
  late Animation<double> _logoOpacity;
  late Animation<double> _logoScale;
  late Animation<double> _textOpacity;
  late Animation<Offset> _textSlide;
  late Animation<double> _shimmerAnimation;

  @override
  void initState() {
    super.initState();
    
    // Primary animation controller
    _primaryController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Shimmer effect controller
    _shimmerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat();

    // Particles animation
    _particlesController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat();

    // Logo animations with staggered timing
    _logoOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _primaryController,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      ),
    );

    _logoScale = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _primaryController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOutBack),
      ),
    );

    // Text animations
    _textOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _primaryController,
        curve: const Interval(0.4, 0.7, curve: Curves.easeIn),
      ),
    );

    _textSlide = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _primaryController,
        curve: const Interval(0.4, 0.8, curve: Curves.easeOutCubic),
      ),
    );

    // Shimmer animation
    _shimmerAnimation = Tween<double>(begin: -1.0, end: 2.0).animate(
      CurvedAnimation(
        parent: _shimmerController,
        curve: Curves.linear,
      ),
    );

    // Start primary animation
    _primaryController.forward();
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashScreenProvider.notifier).load().then((mobileNumber) async {
        if (mounted) {
           if (mobileNumber != null) {
              // Auto-login success
              log('Auto-login for $mobileNumber');
              await ref.read(loginProvider.notifier).fetchStudentApplicant(mobileNumber);
              if (mounted) context.go("/landing");
           } else {
              // Not logged in
              context.go("/onBoard");
           }
        }
      });
    });
  }

  @override
  void dispose() {
    _primaryController.dispose();
    _shimmerController.dispose();
    _particlesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Animated Logo with shimmer effect
                AnimatedBuilder(
                  animation: _primaryController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _logoOpacity.value,
                      child: Transform.scale(
                        scale: _logoScale.value,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Logo with shimmer
                            ShaderMask(
                              blendMode: BlendMode.srcATop,
                              shaderCallback: (bounds) {
                                return LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [
                                    _shimmerAnimation.value - 0.3,
                                    _shimmerAnimation.value,
                                    _shimmerAnimation.value + 0.3,
                                  ],
                                  colors: const [
                                    Colors.transparent,
                                    Colors.white,
                                    Colors.transparent,
                                  ],
                                ).createShader(bounds);
                              },
                              child: Image.asset(
                                AppImages.logo,
                                width: 200.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                SizedBox(height: 50.h),

                // Animated Text
                AnimatedBuilder(
                  animation: _primaryController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _textOpacity.value,
                      child: Transform.translate(
                        offset: Offset(0, _textSlide.value.dy * 20),
                        child: Column(
                          children: [
                            // Decorative line
                            Container(
                              width: 40.w,
                              height: 2.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Theme.of(context).primaryColor.withOpacity(0.5),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                            
                            SizedBox(height: 16.h),
                            
                            Text(
                              'POWERED BY',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 3,
                              ),
                            ),
                            
                            SizedBox(height: 8.h),
                            
                           
                              //  Text(
                              //   'My Amrita',
                              //   style: TextStyle(
                              //     fontSize: 24.sp,
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.bold,
                              //     letterSpacing: 1.5,
                              //   ),
                              // ),
                              
                            Image.asset(AppImages.myAmritaLogo,width: 100.w,),
                            SizedBox(height: 16.h),
                            Container(
                              width: 40.w,
                              height: 2.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Theme.of(context).primaryColor.withOpacity(0.5),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}