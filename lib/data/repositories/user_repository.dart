import 'dart:developer';

import 'package:melhoracidade/data/datasources/auth_datasource.dart';
import 'package:melhoracidade/domain/entities/citizen_entity.dart';
import 'package:melhoracidade/domain/entities/user_entity.dart';
import 'package:melhoracidade/domain/repositories/i_user_repository.dart';

class UserRepository extends IUserRepository {
  final IAuthDataSource _authDataSource;

  UserRepository({required IAuthDataSource authDataSource})
      : _authDataSource = authDataSource;

  @override
  Future<void> createAccount({required UserEntity userEntity}) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogin(
      {required String email, required String password}) async {
    try {
      final logged =
          await _authDataSource.doLogin(email: email, password: password);
      if (logged) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log('[DO LOGIN DATASOURCE] Error: $e');
      return false;
    }
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
