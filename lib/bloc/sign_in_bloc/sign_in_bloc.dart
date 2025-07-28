import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on(_onSignInEvent);
  }

  Future<void> _onSignInEvent(
    SignInButtonPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoading());

    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    if (event.email.isEmpty || event.password.isEmpty) {
      emit(SignInFailure(message: "جميع الحقول مطلوبة"));
      return;
    }
    if (event.email == 'test@gamil.com' && event.password == '12345678') {
      emit(SignInSuccess());
    } else {
      emit(
        SignInFailure(message: "البريد الالكتروني او كلمة المرور غير صحيحة"),
      );
    }
  }
}
