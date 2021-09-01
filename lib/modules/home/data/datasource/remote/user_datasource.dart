import 'package:architecture_example/modules/home/data/models/user/user_model.dart';

abstract class UserDatasource {
  Future<List<UserModel>> getUsers();
}
