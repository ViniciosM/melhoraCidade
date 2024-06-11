import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class IGetManifestationByIdCitizen {
  Future<List<ManifestationEntity>> call({required int idAuthor});
}

class GetManifestationByIdCitizen extends IGetManifestationByIdCitizen {
  @override
  Future<List<ManifestationEntity>> call({required int idAuthor}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
