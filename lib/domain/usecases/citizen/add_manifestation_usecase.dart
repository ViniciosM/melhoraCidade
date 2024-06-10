import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

abstract class IAddManifestationUseCase {
  Future<void> call({required ManifestationEntity manifestationEntity});
}

class AddManifestationUseCase extends IAddManifestationUseCase {
  @override
  Future<void> call({required ManifestationEntity manifestationEntity}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
