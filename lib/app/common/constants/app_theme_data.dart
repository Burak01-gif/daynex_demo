import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

final class AppThemeData {
  static final ThemeData themeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    bottomNavigationBarTheme: _bottomNavigationBarTheme,
    appBarTheme: _appBarTheme,
    textTheme: const TextTheme(
      displayLarge: TextStyle(),
      displayMedium: TextStyle(),
      displaySmall: TextStyle(),
      headlineLarge: TextStyle(),
      headlineMedium: TextStyle(),
      headlineSmall: TextStyle(),
      titleLarge: TextStyle(),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(),
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
      labelLarge: TextStyle(),
      labelMedium: TextStyle(),
      labelSmall: TextStyle(),
    ).apply(
      fontFamily: 'Avenir',
    ),
  );

  static const BottomNavigationBarThemeData _bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    backgroundColor: AppColors.borderGreen,
    elevation: 0,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.borderGreen,
    unselectedItemColor: AppColors.borderGreen,
    unselectedLabelStyle: TextStyle(
      color: AppColors.borderGreen,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    selectedLabelStyle: TextStyle(
      color: AppColors.borderGreen,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  );

  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.white,
    centerTitle: false,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColors.spaceCadet,
    ),
    scrolledUnderElevation: 0,
    actionsPadding: EdgeInsets.only(right: 20),
  );
}
