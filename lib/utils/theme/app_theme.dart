import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final AppTheme _appTheme = AppTheme._();

  factory AppTheme() {
    return _appTheme;
  }

  ThemeData light() => ThemeData(
    useMaterial3: true,

  );

}