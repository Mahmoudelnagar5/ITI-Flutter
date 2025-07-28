import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/app_validtion.dart';

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

    if (!AppValidtion.isNotEmpty(
      event.name,
      event.email,
      event.password,
      event.confirmPassword,
    )) {
      emit(SignUpFailure(message: "جميع الحقول مطلوبة"));
      return;
    }
    if (!AppValidtion.isValidEmail(event.email)) {
      emit(SignUpFailure(message: "البريد الالكتروني غير صحيح"));
      return;
    }
    if (!AppValidtion.isValidPassword(event.password)) {
      emit(SignUpFailure(message: "كلمة المرور يجب ان تكون على الاقل 6 حروف"));
      return;
    }
    if (!AppValidtion.isMatchPassword(event.password, event.confirmPassword)) {
      emit(SignUpFailure(message: "كلمة المرور غير متطابقة"));
      return;
    }
    emit(SignUpSuccess());
  }
}
