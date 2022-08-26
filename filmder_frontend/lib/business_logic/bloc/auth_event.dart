part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LogIn extends AuthEvent {
  final String userName;
  final String password;

  LogIn(this.userName, this.password);
}
