import 'package:flutter/material.dart';
import 'package:iti/core/utils/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    primaryColor: AppColor.primaryColor,
    hintColor: AppColor.hintColor,
    appBarTheme: const AppBarTheme(color: AppColor.primaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColor.primaryColor),
      ),
    ),
  );
}
