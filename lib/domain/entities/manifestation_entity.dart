import 'package:equatable/equatable.dart';
import 'package:melhoracidade/core/enums/manifestation_category_enum.dart';
import 'package:melhoracidade/core/enums/manifestation_status_enum.dart';
import 'package:melhoracidade/domain/entities/citizen_entity.dart';

class ManifestationEntity extends Equatable {
  final String idManifestation;
  final String idAuthor;
  final String title;
  final String description;
  final String images;
  final ManifestationStatusEnum status;
  final ManifestationCategoryEnum category;
  final List<CitizenEntity> supportters;
  final DateTime createdAt;
  final DateTime updatedAt;

  const ManifestationEntity(
      {required this.idManifestation,
      required this.idAuthor,
      required this.title,
      required this.description,
      required this.images,
      required this.status,
      required this.category,
      required this.supportters,
      required this.createdAt,
      required this.updatedAt});

  @override
  List<Object?> get props => [idManifestation];
}
