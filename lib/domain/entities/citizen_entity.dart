import 'package:equatable/equatable.dart';
import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

class CitizenEntity extends Equatable {
  final int idCitizen;
  final int idUser;
  final String name;
  final String lastName;
  final int idAddress;
  final List<ManifestationEntity> supports;

  CitizenEntity(
      {required this.idCitizen,
      required this.idUser,
      required this.name,
      required this.lastName,
      required this.idAddress,
      required this.supports});

  @override
  // TODO: implement props
  List<Object?> get props => [idCitizen];
}
