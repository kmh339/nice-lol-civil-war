import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nice_lol_civil_war/core/router/route_config.dart';
import 'package:nice_lol_civil_war/data/repositories/authentication_repository_impl.dart';
import 'package:nice_lol_civil_war/domain/repositories/authentication_repository.dart';
import 'package:nice_lol_civil_war/presentation/blocs/authentication/authentication_bloc.dart';

void main() {
  runApp(const NiceLolCivilWar());
}

class NiceLolCivilWar extends StatelessWidget {
  const NiceLolCivilWar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthenticationRepository>(
      create: (_) => AuthenticationRepositoryImpl(),
      child: BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc(
          authenticationRepository: context.read<AuthenticationRepository>(),
        ),
        child: Builder(
          builder: (context) => MaterialApp.router(
            theme: ThemeData(
              colorSchemeSeed: Colors.black,
            ),
            routerConfig: RouteConfig(context: context),
          ),
        ),
      ),
    );
  }
}
