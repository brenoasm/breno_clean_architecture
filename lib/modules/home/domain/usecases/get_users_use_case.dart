import 'package:architecture_example/commons/entities/user/user_entity.dart';
import 'package:architecture_example/modules/home/domain/repositories/user_repository.dart';

abstract class GetUsersUseCase {
  Future<List<UserEntity>> call();
}

class GetUsersUseCaseImpl implements GetUsersUseCase {
  final UserRepository userRepository;

  GetUsersUseCaseImpl({required this.userRepository});

  @override
  Future<List<UserEntity>> call() => userRepository.getUsers();
}
