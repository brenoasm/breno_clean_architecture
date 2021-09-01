import 'package:architecture_example/commons/entities/user/address_entity.dart';
import 'package:architecture_example/modules/home/data/models/user/address_model.dart';

class AddressMapper {
  static AddressEntity toEntity(AddressModel model) => AddressEntity(
        street: model.street,
        city: model.city,
      );
}
