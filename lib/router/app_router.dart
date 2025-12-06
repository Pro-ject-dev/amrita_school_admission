import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:amrita_vidhyalayam_admission/features/splash/splash_screen.dart';
import 'package:amrita_vidhyalayam_admission/features/login/login_screen.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/view/admission_form_screen.dart';
import 'package:amrita_vidhyalayam_admission/features/payment/payment_success_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) =>  LoginScreen(),
      ),
      GoRoute(
        path: '/admission',
        builder: (context, state) => const AdmissionFormScreen(),
      ),
      GoRoute(
        path: '/payment-success',
        builder: (context, state) => const PaymentSuccessScreen(),
      ),
    ],
  );
}
