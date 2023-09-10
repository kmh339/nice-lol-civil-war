part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = Initial;

  const factory AuthenticationState.inProgress() = InProgress;

  const factory AuthenticationState.success() = Success;

  const factory AuthenticationState.failure({
    required String message,
  }) = Failure;
}
