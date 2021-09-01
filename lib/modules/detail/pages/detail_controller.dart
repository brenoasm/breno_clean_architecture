import 'package:architecture_example/commons/stores/user_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailController extends Disposable {
  final UserStore userStore;

  DetailController({
    required this.userStore,
  });

  @override
  void dispose() {}
}
