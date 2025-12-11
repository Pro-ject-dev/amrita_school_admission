import 'dart:async';
import 'dart:developer';
import 'package:amrita_vidyalyam_admission/features/splash/viewmodel/splash_screen_state.dart' show SplashScreenState;
import 'package:amrita_vidyalyam_admission/data/repository/auth_repository.dart';
import 'package:flutter_riverpod/legacy.dart';


class SplashScreenViewModel extends StateNotifier<SplashScreenState> {
  final AuthRepository _authRepository;

  SplashScreenViewModel(this._authRepository) : super(SplashScreenState.initial());

  Future<bool> load() async {
    log('Splash screen loading started');
    state = state.copyWith(isLoading: true);
    try {
      await Future.delayed(const Duration(seconds: 3));
      final isLoggedIn = await _authRepository.isLoggedIn();
      
      log('Splash loading finished, navigating to ${isLoggedIn ? 'dashboard' : 'onboarding/login'}');
      state = state.copyWith(
        isLoading: false, 
        isFinished: true,
        isAuthenticated: isLoggedIn,
      );
      return isLoggedIn;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return false;
    }
  }
}

final splashScreenProvider =
    StateNotifierProvider<SplashScreenViewModel, SplashScreenState>(
  (ref) => SplashScreenViewModel(ref.read(authRepositoryProvider)),
);
