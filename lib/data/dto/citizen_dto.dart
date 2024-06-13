import 'package:melhoracidade/domain/entities/citizen_entity.dart';

class CitizenDTO extends CitizenEntity {
  const CitizenDTO(
      {required super.idCitizen,
      required super.idUser,
      required super.name,
      required super.lastName,
      required super.idAddress,
      required super.supports});
}
