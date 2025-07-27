import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpButtonPressedEvent>(_onSignUpEvent);
  }

  Future<void> _onSignUpEvent(
    SignUpButtonPressedEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(SignUpLoading());

    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    if (event.name.isEmpty ||
        event.email.isEmpty ||
        event.password.isEmpty ||
        event.confirmPassword.isEmpty) {
      emit(SignUpFailure(message: "جميع الحقول مطلوبة"));
      return;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(event.email)) {
      emit(SignUpFailure(message: "البريد الالكتروني غير صحيح"));
      return;
    }
    if (event.password != event.confirmPassword) {
      emit(SignUpFailure(message: "كلمتا المرور غير متطابقتين"));
      return;
    }

    if (event.password.length < 6) {
      emit(SignUpFailure(message: "كلمة المرور يجب ان تكون اكثر من 6 حروف"));
      return;
    }
    emit(SignUpSuccess());
  }
}
