import 'package:equatable/equatable.dart';
import 'package:melhoracidade/domain/entities/manifestation_entity.dart';

class CityEntity extends Equatable {
  final int idCity;
  final String name;
  final String uf;
  final int population;
  final double rating;
  final double pib;
  final double unemployment;
  final List<ManifestationEntity> manifestations;

  const CityEntity({
    required this.idCity,
    required this.name,
    required this.uf,
    required this.population,
    required this.rating,
    required this.pib,
    required this.unemployment,
    required this.manifestations,
  });

  @override
  List<Object?> get props => [idCity];
}
