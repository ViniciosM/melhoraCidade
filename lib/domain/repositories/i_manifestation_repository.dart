import 'package:melhoracidade/domain/entities/citizen_entity.dart';
import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class IManifestationRepository {
  Future<List<CitizenEntity>> getAllSupporters({required int idManifestation});
  Future<List<ManifestationEntity>> getManifestationByAddress(
      {required String city, required String state});
  Future<List<ManifestationEntity>> getManifestationByIdCitizen(
      {required int idCitizen});
  Future<List<ManifestationEntity>> getManifestationByIdCity(
      {required int idCity});
}
