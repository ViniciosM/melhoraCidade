import 'package:melhoracidade/domain/entities/citizen_entity.dart';

abstract class IAddCityUseCase {
  Future<void> call({required CitizenEntity citizenEntity});
}

class AddCityUseCase extends IAddCityUseCase {
  @override
  Future<void> call({required CitizenEntity citizenEntity}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
