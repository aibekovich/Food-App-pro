import 'package:savetime/Constans/colors_page.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.darkTheme,
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.mainColor),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.lightTheme,
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.mainColor),
    );
  }
}
