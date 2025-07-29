part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInSuccess extends SignInState {
  final User user;

  SignInSuccess(this.user);
}

final class SignInFailure extends SignInState {
  final String message;

  SignInFailure({required this.message});
}
