import 'package:melhoracidade/domain/entities/manifestation_entity.dart';
import 'package:melhoracidade/domain/repositories/i_citizen_repository.dart';

class CitizenRepository extends ICitizenRepository {
  @override
  Future<void> addManifestation(
      {required ManifestationEntity manifestationEntity}) {
    // TODO: implement addManifestation
    throw UnimplementedError();
  }

  @override
  Future<void> editAddress({required int idAddress}) {
    // TODO: implement editAddress
    throw UnimplementedError();
  }
}
