import 'package:get_it/get_it.dart';
import 'package:module_data/src/implementation/internals.dart';

import 'package:module_data/src/servises.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize() {
    _getIt.registerLazySingleton<UserService>(() => DummyUserService());
  }
}
