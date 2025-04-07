import 'package:find_jobs/core/theme/custom_themes/text_theme.dart';
import 'package:find_jobs/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class JTabBarTheme {
  JTabBarTheme._();

  static TabBarTheme lightTabBarTheme = TabBarTheme(
    indicatorColor: JColors.themeColor,
    dividerColor: Colors.transparent,
    labelColor: JColors.themeColor,
    labelStyle: JTextTheme.lightTextTheme.bodyMedium,
    unselectedLabelStyle: JTextTheme.lightTextTheme.bodyLarge,
  );
  static TabBarTheme darkTabBarTheme = TabBarTheme(
    indicatorColor: JColors.themeColor,
    dividerColor: Colors.transparent,
    labelColor: JColors.themeColor,
    labelStyle: JTextTheme.darkTextTheme.bodyMedium,
    unselectedLabelStyle: JTextTheme.darkTextTheme.bodyLarge,
  );
}
