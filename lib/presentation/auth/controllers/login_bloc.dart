import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melhoracidade/core/di/main_di.dart';
import 'package:melhoracidade/domain/usecases/user/do_login_usecase.dart';
import 'package:melhoracidade/presentation/auth/controllers/login_event.dart';
import 'package:melhoracidade/presentation/auth/controllers/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState(
          status: LoginStatus.initial,
        )) {
    on<DoLoginEvent>(_doLoginEvent);
  }

  final IDoLoginUseCase _doLoginUseCase = getIt.get<IDoLoginUseCase>();

  FutureOr<void> _doLoginEvent(
      DoLoginEvent event, Emitter<LoginState> emit) async {
    emit(const LoginState(status: LoginStatus.loading));
    try {
      await _doLoginUseCase.call(email: event.email, password: event.password);

      emit(const LoginState(
        status: LoginStatus.logged,
      ));
    } catch (e) {
      log('BLOC [DO LOGIN] ERROR: $e');
      emit(const LoginState(status: LoginStatus.failure));
    }
  }
}
