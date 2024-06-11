import 'package:melhoracidade/domain/entities/citizen_entity.dart';
import 'package:melhoracidade/domain/entities/manifestation_entity.dart';
import 'package:melhoracidade/domain/repositories/i_manifestation_repository.dart';

class ManifestationRepository extends IManifestationRepository {
  @override
  Future<List<CitizenEntity>> getAllSupporters({required int idManifestation}) {
    // TODO: implement getAllSupporters
    throw UnimplementedError();
  }

  @override
  Future<List<ManifestationEntity>> getManifestationByAddress(
      {required String city, required String state}) {
    // TODO: implement getManifestationByAddress
    throw UnimplementedError();
  }

  @override
  Future<List<ManifestationEntity>> getManifestationByIdCitizen(
      {required int idCitizen}) {
    // TODO: implement getManifestationByIdCitizen
    throw UnimplementedError();
  }

  @override
  Future<List<ManifestationEntity>> getManifestationByIdCity(
      {required int idCity}) {
    // TODO: implement getManifestationByIdCity
    throw UnimplementedError();
  }
}
