import 'package:melhoracidade/domain/entities/citizen_entity.dart';
import 'package:melhoracidade/domain/entities/user_entity.dart';
import 'package:melhoracidade/domain/repositories/I_user_repository.dart';

class UserRepository extends IUserRepository {
  @override
  Future<void> createAccount({required UserEntity userEntity}) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<void> doLogin({required String email, required String password}) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<void> doLoginWithGoogle(
      {required String email, required String password}) {
    // TODO: implement doLoginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> generateCitizen({required CitizenEntity citizenEntity}) {
    // TODO: implement generateCitizen
    throw UnimplementedError();
  }

  @override
  Future<void> recoverPassword({required String email}) {
    // TODO: implement recoverPassword
    throw UnimplementedError();
  }
}
