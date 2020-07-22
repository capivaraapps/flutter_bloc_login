abstract class LoginService {
  Future<String> login(String email, String password);
  Future<String> logout();
}

class LoginException implements Exception {}

class SimpleLoginService extends LoginService {
  @override
  Future<String> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));

    if (email != "test@test.com" || password != "123456") {
      throw LoginException();
    } else {
      return "tokencillo";
    }
  }

  @override
  Future<String> logout() async {
    return "";
  }
  
}