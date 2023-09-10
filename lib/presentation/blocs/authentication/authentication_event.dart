part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.changed() = Changed;
}
