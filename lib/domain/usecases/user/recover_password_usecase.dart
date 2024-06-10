abstract class IRecoverPasswordUseCase {
  Future<void> call({required String email});
}

class RecoverPasswordUseCase extends IRecoverPasswordUseCase {
  @override
  Future<void> call({required String email}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
