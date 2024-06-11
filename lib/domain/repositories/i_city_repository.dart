import 'package:melhoracidade/domain/entities/city_entity.dart';

abstract class ICityRepository {
  Future<void> addCity({required CityEntity cityEntity});
}
