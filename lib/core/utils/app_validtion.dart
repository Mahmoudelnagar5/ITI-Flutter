import 'package:flutter/material.dart';

abstract class AppValidtion {
  static bool isValidEmail(String email) {
    final regExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z]{2,})+$",
    );
    return regExp.hasMatch(email.trim());
  }

  static String? Function(String?) validationEmailMethod({
    required BuildContext context,
  }) {
    return (String? email) {
      final trimmedEmail = email?.trim();

      if (trimmedEmail == null || trimmedEmail.isEmpty) {
        return 'Email is required';
      } else if (!isValidEmail(trimmedEmail)) {
        return 'Invalid email format';
      } else {
        return null; // Valid
      }
    };
  }

  static String? Function(String?)? validationPasswordMethod({
    required BuildContext context,
  }) {
    return (value) {
      if (value == null || value.isEmpty) {
        return 'Required Field';
      }

      if (value.length < 6) {
        return 'Less length';
      }

      return null;
    };
  }

  static String? Function(String?) validationConfirmPasswordMethod({
    required BuildContext context,
    required TextEditingController passwordController,
  }) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return 'Confirm password is required';
      } else if (value != passwordController.text) {
        return 'Passwords do not match';
      }
      return null;
    };
  }

  static bool isMatchPassword(String password, String confirmPassword) {
    return password == confirmPassword;
  }

  static bool isValidPassword(String password) {
    return password.length >= 6;
  }

  static bool isNotEmpty(
    String name,
    String email,
    String password,
    String confirmPassword,
  ) {
    return name.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty;
  }
}
