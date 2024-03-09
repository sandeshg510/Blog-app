import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailAndPassword({
    required name,
    required email,
    required password,
  });
  Future<Either<Failure, String>> loginWithEmailAndPassword({
    required email,
    required password,
  });
}
