import 'package:equatable/equatable.dart';
import 'package:melhoracidade/domain/entities/citizen_entity.dart';

enum ManifestationStatus {
  paused,
  inProgress,
  fixedUp,
}

class ManifestationEntity extends Equatable {
  final String idManifestation;
  final String idAuthor;
  final String title;
  final String description;
  final String images;
  final ManifestationStatus status;
  final List<CitizenEntity> supportters;
  final DateTime createdAt;
  final DateTime updatedAt;

  ManifestationEntity(
      {required this.idManifestation,
      required this.idAuthor,
      required this.title,
      required this.description,
      required this.images,
      required this.status,
      required this.supportters,
      required this.createdAt,
      required this.updatedAt});

  @override
  // TODO: implement props
  List<Object?> get props => [idManifestation];
}
