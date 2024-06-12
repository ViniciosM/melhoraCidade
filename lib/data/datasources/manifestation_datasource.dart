import 'package:melhoracidade/data/dto/citizen_dto.dart';
import 'package:melhoracidade/data/dto/manifestation_dto.dart';

abstract class IManifestationDataSource {
  Future<List<CitizenDTO>> getAllSupporters({required int idManifestation});
  Future<List<ManifestationDTO>> getManifestationByAddress(
      {required String city, required String state});
  Future<List<ManifestationDTO>> getManifestationByIdCitizen(
      {required int idCitizen});
  Future<List<ManifestationDTO>> getManifestationByIdCity(
      {required int idCity});
}

class ManifestationDataSource extends IManifestationDataSource {
  @override
  Future<List<CitizenDTO>> getAllSupporters({required int idManifestation}) {
    // TODO: implement getAllSupporters
    throw UnimplementedError();
  }

  @override
  Future<List<ManifestationDTO>> getManifestationByAddress(
      {required String city, required String state}) {
    // TODO: implement getManifestationByAddress
    throw UnimplementedError();
  }

  @override
  Future<List<ManifestationDTO>> getManifestationByIdCitizen(
      {required int idCitizen}) {
    // TODO: implement getManifestationByIdCitizen
    throw UnimplementedError();
  }

  @override
  Future<List<ManifestationDTO>> getManifestationByIdCity(
      {required int idCity}) {
    // TODO: implement getManifestationByIdCity
    throw UnimplementedError();
  }
}
