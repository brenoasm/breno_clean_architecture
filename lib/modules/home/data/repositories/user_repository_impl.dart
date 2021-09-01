import 'package:architecture_example/commons/entities/user/user_entity.dart';
import 'package:architecture_example/modules/home/data/datasource/remote/user_datasource.dart';
import 'package:architecture_example/modules/home/data/mappers/user/user_mapper.dart';
import 'package:architecture_example/modules/home/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDatasource userDatasource;

  UserRepositoryImpl({required this.userDatasource});

  @override
  Future<List<UserEntity>> getUsers() async {
    final usersModel = await userDatasource.getUsers();

    return usersModel.map((e) => UserMapper.toEntity(e)).toList();
  }
}
