import 'package:melhoracidade/domain/entities/city_entity.dart';

class CityDTO extends CityEntity {
  CityDTO(
      {required super.idCity,
      required super.name,
      required super.uf,
      required super.population,
      required super.rating,
      required super.pib,
      required super.unemployment,
      required super.manifestations});
}
