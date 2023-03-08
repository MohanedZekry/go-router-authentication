part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = LoginEvent;
  const factory AuthEvent.isLoggedIn() = IsLoggedInEvent;

}
