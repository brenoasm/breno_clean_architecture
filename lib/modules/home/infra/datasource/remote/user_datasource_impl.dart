import 'package:architecture_example/commons/http/http_adapter.dart';
import 'package:architecture_example/modules/home/data/datasource/remote/user_datasource.dart';
import 'package:architecture_example/modules/home/data/models/user/user_model.dart';

class UserDatasourceImpl implements UserDatasource {
  final HttpAdapter http;

  UserDatasourceImpl({required this.http});

  @override
  Future<List<UserModel>> getUsers() async {
    final result = await http.get('https://jsonplaceholder.typicode.com/users');

    return result.data.map<UserModel>((e) => UserModel.fromJson(e)).toList();
  }
}
