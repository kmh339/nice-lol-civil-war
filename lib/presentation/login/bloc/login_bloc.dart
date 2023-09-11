import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nice_lol_civil_war/domain/repositories/authentication_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      switch (event) {
        case _Started(:final email, :final password):
          emit(const LoginState.inProgress());
          await authenticationRepository.signIn(token: 'token');
          emit(const LoginState.success());
      }
    });
  }
}
