abstract class AuthLocalDataSource {
  Future<bool> initDb();
  Future<bool> signIn(bool status);
  Future<bool> isLoggedIn();
}