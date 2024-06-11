import 'package:melhoracidade/domain/entities/citizen_entity.dart';

abstract class IGenerateCitizenUseCase {
  Future<void> call({required CitizenEntity citizenEntity});
}

class GenerateCitizenUseCase extends IGenerateCitizenUseCase {
  @override
  Future<void> call({required CitizenEntity citizenEntity}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
