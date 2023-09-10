import 'package:nice_lol_civil_war/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  Future<void> signIn({required String token}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUp({required String token}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  // TODO: implement status
  Stream<AuthStatus> get status => throw UnimplementedError();
}
