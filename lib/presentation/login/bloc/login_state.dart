part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.inProgress() = _InProgress;

  const factory LoginState.success() = _Success;

  const factory LoginState.failure({
    required String message,
  }) = _Failure;
}
