import 'package:get_it/get_it.dart';
import 'package:melhoracidade/presentation/auth/auth_di.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  // setupServicesDependencies();

  /// Modules
  setupAuthDependecies();
}
