import 'package:flutter_modular/flutter_modular.dart';

import 'pages/detail_controller.dart';
import 'pages/detail_page.dart';

class DetailModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => DetailController(
            userStore: i.get(),
          ),
        ),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const DetailPage(),
    ),
  ];
}
