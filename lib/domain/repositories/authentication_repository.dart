enum AuthStatus {
  unknown,
  authenticated,
  unauthenticated,
}

abstract interface class AuthenticationRepository {
  Stream<AuthStatus> get status;

  Future<void> signIn({required String token});

  Future<void> signUp({required String token});

  Future<void> signOut();
}
