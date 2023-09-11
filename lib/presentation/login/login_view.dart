import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nice_lol_civil_war/domain/repositories/authentication_repository.dart';
import 'package:nice_lol_civil_war/presentation/login/bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(
        authenticationRepository: context.read<AuthenticationRepository>(),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 40),
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NICE LoL Civil War',
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(),
                const SizedBox(
                  height: 40,
                ),
                _LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<LoginBloc>().add(
        LoginEvent.started(
          email: 'email',
          password: 'password',
        ),
      ),
      child: Text('login'),
    );
  }
}
