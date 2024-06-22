import 'dart:developer';

import 'package:melhoracidade/data/dto/user_dto.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

abstract class IAuthDataSource {
  Future<bool> doLogin({required String email, required String password});
  Future<bool> createAccount({required UserDTO userDTO});
}

class AuthDataSource extends IAuthDataSource {
  final _supabaseInstance = Supabase.instance.client;

  @override
  Future<bool> createAccount({required UserDTO userDTO}) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogin(
      {required String email, required String password}) async {
    try {
      await _supabaseInstance.auth
          .signInWithPassword(email: email, password: password);
      return true;
    } catch (e) {
      log('[DO LOGIN DATASOURCE]: Error: $e');
      return false;
    }
  }
}
