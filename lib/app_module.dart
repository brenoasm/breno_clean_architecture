import 'package:architecture_example/app_controller.dart';
import 'package:architecture_example/commons/stores/user_store.dart';
import 'package:architecture_example/modules/home/home_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'commons/http/dio_adapter_impl.dart';
import 'modules/detail/detail_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppController()),
    Bind.factory(
      (i) => DioAdapterImpl(
        dio: Dio(),
      ),
    ),
    Bind.singleton(
      (i) => UserStore(),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/',
      module: HomeModule(),
    ),
    ModuleRoute(
      '/detail',
      module: DetailModule(),
    ),
  ];
}
