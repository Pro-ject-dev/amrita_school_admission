import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_state.freezed.dart';

@freezed
abstract class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    required bool isLoading,
    @Default(false) bool isFinished,
    @Default(false) bool isAuthenticated,
  }) = _SplashScreenState;

  factory SplashScreenState.initial() => const SplashScreenState(
        isLoading: false,
      );
}