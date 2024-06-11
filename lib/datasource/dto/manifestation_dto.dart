import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

class ManifestationDTO extends ManifestationEntity {
  const ManifestationDTO(
      {required super.idManifestation,
      required super.idAuthor,
      required super.title,
      required super.description,
      required super.images,
      required super.status,
      required super.category,
      required super.supportters,
      required super.createdAt,
      required super.updatedAt});
}
