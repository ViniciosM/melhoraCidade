import 'dart:developer';

import 'package:melhoracidade/domain/repositories/i_user_repository.dart';

abstract class IDoLoginUseCase {
  Future<bool> call({required String email, required String password});
}

class DoLoginUseCase extends IDoLoginUseCase {
  final IUserRepository _iUserRepository;

  DoLoginUseCase({required IUserRepository iUserRepository})
      : _iUserRepository = iUserRepository;

  @override
  Future<bool> call({required String email, required String password}) async {
    try {
      await _iUserRepository.doLogin(email: email, password: password);
      return true;
    } catch (e) {
      log('[DO LOGIN REPOSITORY] Error: $e');
      return false;
    }
  }
}
