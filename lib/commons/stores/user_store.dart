import 'package:architecture_example/commons/entities/user/user_entity.dart';

import 'package:get/get.dart';

class UserStore {
  Rx<List<UserEntity>> _users = Rx<List<UserEntity>>([]);
  List<UserEntity> get users => _users.value;
  set users(List<UserEntity> value) => _users.value = value;
}
