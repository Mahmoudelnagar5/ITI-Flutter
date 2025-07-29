import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/models/repo/auth_repo.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepo authRepo;

  SignInBloc(this.authRepo) : super(SignInInitial()) {
    on(_onSignInEvent);
  }

  Future<void> _onSignInEvent(
    SignInButtonPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoading());
    try {
      final user = await authRepo.login(
        email: event.email,
        password: event.password,
      );
      emit(SignInSuccess(user));
    } catch (e) {
      emit(SignInFailure(message: e.toString()));
    }
  }
}
