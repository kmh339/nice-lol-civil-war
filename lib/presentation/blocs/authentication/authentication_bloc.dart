import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nice_lol_civil_war/domain/repositories/authentication_repository.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(const AuthenticationState.initial()) {
    _authStatusSubscription = authenticationRepository.status.listen(
      (status) => add(_Changed(status: status)),
    );

    on<AuthenticationEvent>(
      (event, emit) => switch (event) {
        _Changed(status: final status) => switch (status) {
            AuthStatus.unknown =>
              emit(AuthenticationState.failure(message: 'message')),
            AuthStatus.unauthenticated =>
              emit(AuthenticationState.failure(message: 'message')),
            AuthStatus.authenticated =>
              emit(const AuthenticationState.success()),
          },
      },
    );
  }

  late StreamSubscription<AuthStatus> _authStatusSubscription;

  @override
  Future<void> close() async {
    await _authStatusSubscription.cancel();

    return super.close();
  }
}
