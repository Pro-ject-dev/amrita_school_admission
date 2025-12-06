import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amrita_vidhyalayam_admission/core/base_view_model.dart';
import 'package:amrita_vidhyalayam_admission/data/repository/auth_repository.dart';

final splashViewModelProvider = StateNotifierProvider<SplashViewModel, AsyncValue<bool>>((ref) {
  return SplashViewModel(ref.read(authRepositoryProvider));
});

class SplashViewModel extends BaseViewModel<AsyncValue<bool>> {
  final AuthRepository _authRepository;

  SplashViewModel(this._authRepository) : super(const AsyncValue.loading()) {
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    try {
      await Future.delayed(const Duration(seconds: 2)); // Minimum splash time
      final isLoggedIn = await _authRepository.isLoggedIn();
      state = AsyncValue.data(isLoggedIn);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      logError('Check login status failed', e, st);
    }
  }
}
