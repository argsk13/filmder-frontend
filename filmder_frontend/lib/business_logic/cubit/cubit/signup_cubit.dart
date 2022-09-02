import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupState.initial());

  void emailChanged(String value) {
    emit(state.copyWith(email: value, status: SignupStatus.processing));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, status: SignupStatus.processing));
  }
}
