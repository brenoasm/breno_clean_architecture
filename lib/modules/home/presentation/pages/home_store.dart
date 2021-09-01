import 'package:get/get.dart';

class HomeStore {
  Rx<bool> _loading = Rx<bool>(true);
  bool get loading => _loading.value;
  set loading(bool value) => _loading.value = value;
}
