part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(bool status) = LoginEvent;
  const factory AuthEvent.isLoggedIn() = IsLoggedInEvent;

}
