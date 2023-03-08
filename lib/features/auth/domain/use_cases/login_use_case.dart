import 'package:dartz/dartz.dart';
import 'package:gorouter_auth/core/error/failure.dart';
import 'package:gorouter_auth/core/use_case/base_use_case.dart';
import 'package:gorouter_auth/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase extends BaseUseCase<bool, DefaultParams>{

  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  @override
  Future<Either<Failure, bool>> call(DefaultParams param) async{
    return await authRepository.signIn();
  }

}