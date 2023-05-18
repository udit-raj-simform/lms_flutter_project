import 'package:lms_flutter_project/utils/exports.dart';

class AppTheme {
  AppTheme._();

  static final AppTheme _appTheme = AppTheme._();

  factory AppTheme() {
    return _appTheme;
  }

  ThemeData light() => ThemeData(
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: MyColors.backgroundLight,
          unselectedItemColor: MyColors.iconGrey,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 5,
        ),
      );
}
