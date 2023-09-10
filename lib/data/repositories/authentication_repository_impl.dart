import 'dart:async';

import 'package:nice_lol_civil_war/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final StreamController<AuthStatus> _controller =
      StreamController<AuthStatus>();

  @override
  Future<void> signIn({required String token}) async {
    await Future.delayed(const Duration(seconds: 1));
    _controller.add(AuthStatus.authenticated);
  }

  @override
  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
    _controller.add(AuthStatus.unauthenticated);
  }

  @override
  Future<void> signUp({required String token}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Stream<AuthStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    // TODO: to unauthentcated
    yield AuthStatus.unauthenticated;
    yield* _controller.stream;
  }
}
