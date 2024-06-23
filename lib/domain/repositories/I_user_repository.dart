import 'package:melhoracidade/domain/entities/citizen_entity.dart';
import 'package:melhoracidade/domain/entities/user_entity.dart';

abstract class IUserRepository {
  Future<void> createAccount({required UserEntity userEntity});
  Future<bool> doLogin({required String email, required String password});
  Future<void> doLoginWithGoogle(
      {required String email, required String password});
  Future<void> recoverPassword({required String email});
  Future<void> generateCitizen({required CitizenEntity citizenEntity});
}
