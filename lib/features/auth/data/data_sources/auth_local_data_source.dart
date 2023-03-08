abstract class AuthLocalDataSource {
  Future<bool> initDb();
  Future<bool> signIn();
  Future<bool> isLoggedIn();
}