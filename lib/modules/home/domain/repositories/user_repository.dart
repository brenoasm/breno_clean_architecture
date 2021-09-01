import 'package:architecture_example/commons/entities/user/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUsers();
}
