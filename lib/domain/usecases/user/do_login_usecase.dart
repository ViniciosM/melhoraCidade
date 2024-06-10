abstract class IDoLoginUseCase {
  Future<bool> call({required String email, required String password});
}

class DoLogin extends IDoLoginUseCase {
  @override
  Future<bool> call({required String email, required String password}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
