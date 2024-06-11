import 'package:melhoracidade/domain/entities/user_entity.dart';

class UserDTO extends UserEntity {
  const UserDTO(
      {required super.idUser,
      required super.username,
      required super.email,
      required super.password,
      required super.createdAt});
}
