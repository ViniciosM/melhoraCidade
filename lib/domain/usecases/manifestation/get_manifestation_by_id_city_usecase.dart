import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class IGetManifestationByIdCity {
  Future<List<ManifestationEntity>> call({required int idCity});
}

class GetManifestationByIdCity extends IGetManifestationByIdCity {
  @override
  Future<List<ManifestationEntity>> call({required int idCity}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
