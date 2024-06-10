abstract class IEditAddressUseCase {
  Future<void> call({required int idAddress});
}

class EditAddressUseCase extends IEditAddressUseCase {
  @override
  Future<void> call({required int idAddress}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
