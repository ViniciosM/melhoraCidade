import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int idUser;
  final String username;
  final String email;
  final String password;
  final String createdAt;

  UserEntity(
      {required this.idUser,
      required this.username,
      required this.email,
      required this.password,
      required this.createdAt});

  @override
  List<Object?> get props => [idUser];
}
