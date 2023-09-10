import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nice_lol_civil_war/core/router/route_path.dart';
import 'package:nice_lol_civil_war/core/router/routes/routes.dart';
import 'package:nice_lol_civil_war/presentation/blocs/authentication/authentication_bloc.dart';

class RouteConfig extends GoRouter {
  RouteConfig({
    required BuildContext context,
  }) : super(
          debugLogDiagnostics: true,
          routes: $appRoutes,
          refreshListenable: GoRouterRefreshBloc(
            context.read<AuthenticationBloc>(),
          ),
          redirect: (context, state) =>
              switch (context.read<AuthenticationBloc>().state) {
            Initial() => RoutePath.splash,
            InProgress() => null,
            Success() => state.matchedLocation.contains(RoutePath.home)
                ? state.matchedLocation
                : RoutePath.home,
            Failure(message: final _) =>
              state.matchedLocation.contains(RoutePath.login)
                  ? state.matchedLocation
                  : RoutePath.login,
          },
        );
}

class GoRouterRefreshBloc<Bloc extends BlocBase<State>, State>
    extends ChangeNotifier {
  GoRouterRefreshBloc(Bloc bloc) {
    _blocStream = bloc.stream.listen(
      (State _) => notifyListeners(),
    );
  }

  late final StreamSubscription<State> _blocStream;

  @override
  void dispose() {
    _blocStream.cancel();
    super.dispose();
  }
}
