import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:fpdart/src/either.dart';

import '../repository/auth_repository.dart';

class UserSignUp implements UseCase<String, UserSignUpParams> {
  final AuthRepository authRepository;

  UserSignUp(this.authRepository);
  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepository.signUpWithEmailAndPassword(
      name: params.name,
      email: params.email,
      password: params.password,
    );
    throw UnimplementedError();
  }
}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams(
      {required this.email, required this.password, required this.name});
}
