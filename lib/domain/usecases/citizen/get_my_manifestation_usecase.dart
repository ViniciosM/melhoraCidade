import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class IGetMyManifestation {
  Future<List<ManifestationEntity>> call({required int idAuthor});
}

class GetMyManifestation extends IGetMyManifestation {
  @override
  Future<List<ManifestationEntity>> call({required int idAuthor}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
