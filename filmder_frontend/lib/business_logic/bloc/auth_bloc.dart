import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is LogIn) {
        if (event.userName.isEmpty || event.password.isEmpty) {
          emit(AuthError());
        } else {
          await Future.delayed(Duration(seconds: 1), () {
            emit(AuthSucces(event.userName));
          });
        }
      }
    });
  }
}
