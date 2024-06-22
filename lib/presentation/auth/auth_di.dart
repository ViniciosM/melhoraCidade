import 'package:melhoracidade/core/di/main_di.dart';
import 'package:melhoracidade/data/datasources/auth_datasource.dart';
import 'package:melhoracidade/domain/repositories/i_user_repository.dart';
import 'package:melhoracidade/domain/usecases/user/do_login_usecase.dart';

void setupAuthDependecies() {
  getIt.registerSingleton<IAuthDataSource>(AuthDataSource());

  getIt.registerLazySingleton<IDoLoginUseCase>(
      () => DoLoginUseCase(iUserRepository: getIt<IUserRepository>()));
}
