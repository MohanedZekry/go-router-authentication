import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gorouter_auth/features/auth/domain/use_cases/is_logged_in_use_case.dart';
import 'package:gorouter_auth/features/auth/domain/use_cases/login_use_case.dart';
import '../../../../core/use_case/base_use_case.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IsLoggedInUseCase isLoggedInUseCase;
  final LoginUseCase loginUseCase;
  AuthBloc({required this.loginUseCase, required this.isLoggedInUseCase}) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      if(event is LoginEvent){
        final response = await loginUseCase(const DefaultParams());
        response.fold(
                (l) => emit(const AuthState.failed()),
                (r) => emit(const AuthState.success())
        );
      }else if(event is IsLoggedInEvent){
        final response = await loginUseCase(const DefaultParams());
        response.fold(
                (l) => emit(const AuthState.failed()),
                (r) {
              if(r){
                emit(const AuthState.success());
              }else{
                emit(const AuthState.failed());
              }
            }
        );
      }
    });
  }
}
