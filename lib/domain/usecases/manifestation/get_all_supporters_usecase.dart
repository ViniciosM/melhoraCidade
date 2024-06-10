import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class IGetAllSupportersUseCase {
  Future<List<ManifestationEntity>> call({required int idManifestation});
}

class GetAllSupporters extends IGetAllSupportersUseCase {
  @override
  Future<List<ManifestationEntity>> call({required int idManifestation}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
