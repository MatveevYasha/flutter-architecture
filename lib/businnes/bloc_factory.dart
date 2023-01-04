import 'package:flutter_application_1/businnes/main_bloc.dart';
import 'package:flutter_application_1/data/service_provider.dart';
import 'package:get_it/get_it.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  // может быть попробовать 1 раз инициализировать гет икс

  static final instance = BlocFactory();

  void initialize() {
    ServiceProvider.instance.initialize();
    _getIt.registerFactory(() => MainBloc(
          incrementService: ServiceProvider.instance.get(),
        ));
  }
}
