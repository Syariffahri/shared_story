import 'package:flutter/material.dart';
import 'package:shared_story/core/themes/app_colors.dart';

import 'text_theme.dart';

class CustomAppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    textTheme: CustomTextTheme.textTheme,
    textButtonTheme: textButtonThemeData,
    inputDecorationTheme: inputDecorationTheme,
    scaffoldBackgroundColor: AppColors.primaryColor,
    appBarTheme: appBarTheme,
    floatingActionButtonTheme: floatingActionButtonTheme,
    fontFamily: 'Onest',
  );

  static AppBarTheme appBarTheme = AppBarTheme(
    scrolledUnderElevation: 0.0,
    elevation: 0.0,
    titleTextStyle: CustomTextTheme.textTheme.titleMedium,
    color: Colors.white,
    shadowColor: Colors.white,
  );

  static FloatingActionButtonThemeData floatingActionButtonTheme =
      FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryColor,
    elevation: 0.0,
    iconSize: 26,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
    ),
  );

  static TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(10.0),
      textStyle:
          CustomTextTheme.textTheme.titleMedium!.apply(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      backgroundColor: Colors.white,
    ),
  );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    hintStyle: CustomTextTheme.textTheme.bodyMedium!.copyWith(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
    ),
    filled: true,
    fillColor: Colors.grey[200],
    border: InputBorder.none,
  );
}
