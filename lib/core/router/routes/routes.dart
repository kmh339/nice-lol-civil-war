import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nice_lol_civil_war/core/router/route_path.dart';
import 'package:nice_lol_civil_war/presentation/home/home_view.dart';
import 'package:nice_lol_civil_war/presentation/login/login_view.dart';
import 'package:nice_lol_civil_war/presentation/splash/splash_view.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(
  path: RoutePath.splash,
)
@immutable
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashView();
  }
}

@TypedGoRoute<LoginRoute>(
  path: RoutePath.login,
)
@immutable
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginView();
  }
}

@TypedGoRoute<HomeRoute>(
  path: RoutePath.home,
)
@immutable
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}
