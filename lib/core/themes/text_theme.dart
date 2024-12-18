import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomTextTheme {
  static TextTheme textTheme = const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
      fontFamily: 'Onest',
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: AppColors.textColor,
      fontFamily: 'Onest',
    ),
    bodySmall: TextStyle(
      fontSize: 13,
      color: AppColors.subTextColor,
      fontFamily: 'Onest',
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.textColor,
      fontFamily: 'Onest',
    ),
    titleMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
      fontFamily: 'Onest',
    ),
    titleLarge: TextStyle(
      fontSize: 28,
      color: AppColors.textColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Onest',
    ),
  );
}
