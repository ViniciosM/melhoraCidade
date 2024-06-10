import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class IGetManifestationByAddress {
  Future<List<ManifestationEntity>> call(
      {required String city, required String state});
}

class GetManifestationByAddress extends IGetManifestationByAddress {
  @override
  Future<List<ManifestationEntity>> call(
      {required String city, required String state}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
