import 'package:architecture_example/commons/entities/user/user_entity.dart';
import 'package:architecture_example/modules/home/data/mappers/user/address_mapper.dart';
import 'package:architecture_example/modules/home/data/models/user/user_model.dart';

class UserMapper {
  static UserEntity toEntity(UserModel model) => UserEntity(
        id: model.id,
        name: model.name,
        username: model.username,
        email: model.email,
        address: AddressMapper.toEntity(model.address),
      );
}
