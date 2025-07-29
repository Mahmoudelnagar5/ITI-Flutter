import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/repo/auth_repo.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepo authRepo;

  SignUpBloc(this.authRepo) : super(SignUpInitial()) {
    on<SignUpButtonPressedEvent>(_onSignUpEvent);
  }
  Future<void> _onSignUpEvent(
    SignUpButtonPressedEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(SignUpLoading());
    try {
      final user = await authRepo.register(
        email: event.email,
        password: event.password,
        name: event.name,
      );
      emit(SignUpSuccess(user));
    } catch (e) {
      emit(SignUpFailure(message: e.toString()));
    }
  }
}
