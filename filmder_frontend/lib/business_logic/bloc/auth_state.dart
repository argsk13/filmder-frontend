part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSucces extends AuthState {
  final String username;

  AuthSucces(this.username);
}

class AuthError extends AuthState {}
