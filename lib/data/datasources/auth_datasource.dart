import 'package:melhoracidade/data/dto/user_dto.dart';

abstract class IAuthDataSource {
  Future<bool> doLogin({required String email, required String password});
  Future<bool> createAccount({required UserDTO userDTO});
}

class AuthDataSource extends IAuthDataSource {
  @override
  Future<bool> createAccount({required UserDTO userDTO}) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogin({required String email, required String password}) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }
}
