part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSucces extends SignupState {
  final String userName;
  final String password;

  SignupSucces({
    required this.userName,
    required this.password,
  });
}

class SignupError extends SignupState {}
