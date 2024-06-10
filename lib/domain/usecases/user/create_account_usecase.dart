import 'package:melhoracidade/domain/entities/user_entity.dart';

abstract class ICreateAccountUseCase {
  Future<bool> call({required UserEntity userEntity});
}

class CreateAccountUseCase extends ICreateAccountUseCase {
  @override
  Future<bool> call({required UserEntity userEntity}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
