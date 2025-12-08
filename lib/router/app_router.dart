import 'package:amrita_vidhyalayam_admission/features/landing/landing_screen.dart';
import 'package:amrita_vidhyalayam_admission/features/onBoarding/on_boarding_screen.dart';
import 'package:amrita_vidhyalayam_admission/features/register/view/register.dart';
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
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
       GoRoute(
        path: '/onBoard',
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) =>  LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) =>  RegisterScreen(),
      ),
      GoRoute(
        path: '/admission',
        builder: (context, state) => const AdmissionFormScreen(),
      ),
      GoRoute(
        path: '/payment-success',
        builder: (context, state) => const PaymentSuccessScreen(),
      ),
       GoRoute(
        path: '/landing',
        builder: (context, state) => const LandingScreen(),
      ),
    ],
  );
}
