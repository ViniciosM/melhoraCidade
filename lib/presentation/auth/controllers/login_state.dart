import 'package:equatable/equatable.dart';

enum LoginStatus {
  initial,
  loading,
  logged,
  failure,
}

class LoginState extends Equatable {
  final LoginStatus status;
  final String? errorMsg;

  const LoginState({
    this.status = LoginStatus.initial,
    this.errorMsg,
  });

  @override
  bool get stringify => true;

  LoginState copyWith({
    LoginStatus? status,
    String? errorMsg,
  }) {
    return LoginState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }

  @override
  List<Object?> get props => [
        errorMsg,
        status,
      ];
}
