import 'dart:async';
import 'dart:developer';
import 'package:amrita_vidyalyam_admission/features/splash/viewmodel/splash_screen_state.dart' show SplashScreenState;
import 'package:amrita_vidyalyam_admission/data/repository/auth_repository.dart';
import 'package:amrita_vidyalyam_admission/core/services/local_storage_service.dart';
import 'package:flutter_riverpod/legacy.dart';


class SplashScreenViewModel extends StateNotifier<SplashScreenState> {
  final AuthRepository _authRepository;
  final LocalStorageService _storageService;

  SplashScreenViewModel(this._authRepository, this._storageService) : super(SplashScreenState.initial());

  Future<String?> load() async {
    log('Splash screen loading started');
    state = state.copyWith(isLoading: true);
    try {
      await Future.delayed(const Duration(seconds: 3));
      
      final isLoggedIn = await _storageService.isLoggedIn();
      final mobileNumber = await _storageService.getMobileNumber();

      if (isLoggedIn && mobileNumber != null) {
          state = state.copyWith(
            isLoading: false, 
            isFinished: true,
            isAuthenticated: true,
          );
          return mobileNumber;
      }

      state = state.copyWith(
        isLoading: false, 
        isFinished: true,
        isAuthenticated:false ,
      );
      return null;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return null;
    }
  }
}

final splashScreenProvider =
    StateNotifierProvider<SplashScreenViewModel, SplashScreenState>(
  (ref) => SplashScreenViewModel(
      ref.read(authRepositoryProvider),
      ref.read(localStorageServiceProvider)
  ),
);
