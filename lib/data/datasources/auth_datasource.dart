import 'dart:developer';

import 'package:melhoracidade/data/dto/user_dto.dart';
import 'package:melhoracidade/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class IAuthDataSource {
  Future<bool> doLogin({required String email, required String password});
  Future<bool> createAccount({required UserDTO userDTO});
}

class AuthDataSource extends IAuthDataSource {
  //final _supabaseInstance = Supabase.instance.client;

  @override
  Future<bool> createAccount({required UserDTO userDTO}) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogin(
      {required String email, required String password}) async {
    try {
      final authResponse = await supabase.auth
          .signInWithPassword(email: email, password: password);
      if (authResponse.user != null) {
        return true;
      } else {
        return false;
      }
    } on AuthException catch (error) {
      log('[DO LOGIN DATASOURCE]: Error: $error');
      return false;
    }
  }
}
