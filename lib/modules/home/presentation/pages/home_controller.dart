import 'package:architecture_example/commons/stores/user_store.dart';
import 'package:architecture_example/modules/home/domain/usecases/get_users_use_case.dart';
import 'package:architecture_example/modules/home/presentation/pages/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeController extends Disposable {
  final UserStore userStore;
  final HomeStore homeStore;
  final GetUsersUseCase getUsersUseCase;

  HomeController({
    required this.userStore,
    required this.homeStore,
    required this.getUsersUseCase,
  });

  void onInit() async {
    homeStore.loading = true;

    final users = await getUsersUseCase();

    userStore.users = users;

    homeStore.loading = false;
  }

  @override
  void dispose() {}
}
