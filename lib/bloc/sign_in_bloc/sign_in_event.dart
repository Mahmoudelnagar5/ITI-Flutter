part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent {}

final class SignInButtonPressedEvent extends SignInEvent {
  final String email;
  final String password;

  SignInButtonPressedEvent({required this.email, required this.password});
}
