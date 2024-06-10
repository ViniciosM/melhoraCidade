import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final int idAddress;
  final String? street; //rua
  final String? district; //bairro
  final String city;
  final String state;
  final String? zipCode; // cep

  AddressEntity(
      {required this.idAddress,
      required this.street,
      required this.district,
      required this.city,
      required this.state,
      required this.zipCode});

  @override
  List<Object?> get props => [idAddress];
}
