import 'package:architecture_example/modules/home/data/repositories/user_repository_impl.dart';
import 'package:architecture_example/modules/home/domain/usecases/get_users_use_case.dart';
import 'package:architecture_example/modules/home/infra/datasource/remote/user_datasource_impl.dart';
import 'package:architecture_example/modules/home/presentation/pages/home_controller.dart';
import 'package:architecture_example/modules/home/presentation/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/home_store.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => HomeController(
            getUsersUseCase: GetUsersUseCaseImpl(
              userRepository: UserRepositoryImpl(
                userDatasource: UserDatasourceImpl(
                  http: i.get(),
                ),
              ),
            ),
            userStore: i.get(),
            homeStore: HomeStore(),
          ),
        ),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const HomePage(),
    ),
  ];
}
