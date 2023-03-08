import 'package:dartz/dartz.dart';
import 'package:gorouter_auth/core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> signIn();
  Future<Either<Failure, bool>> isLoggedIn();
}