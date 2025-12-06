import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amrita_vidhyalayam_admission/core/base_view_model.dart';
import 'package:amrita_vidhyalayam_admission/data/repository/auth_repository.dart';

final loginViewModelProvider = StateNotifierProvider<LoginViewModel, AsyncValue<void>>((ref) {
  return LoginViewModel(ref.read(authRepositoryProvider));
});

class LoginViewModel extends BaseViewModel<AsyncValue<void>> {
  final AuthRepository _authRepository;

  LoginViewModel(this._authRepository) : super(const AsyncValue.data(null));

  Future<void> login(String mobile) async {
    state = const AsyncValue.loading();
    try {
      await _authRepository.login(mobile);
      state = const AsyncValue.data(null);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      logError('Login failed', e, st);
    }
  }
}
