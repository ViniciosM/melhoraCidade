import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class ICitizenRepository {
  Future<void> addManifestation(
      {required ManifestationEntity manifestationEntity});

  Future<void> editAddress({required int idAddress});
}
