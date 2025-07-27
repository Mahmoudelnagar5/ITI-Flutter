part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpEvent {}

final class SignUpButtonPressedEvent extends SignUpEvent {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;

  SignUpButtonPressedEvent({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}
