import 'package:find_jobs/core/theme/custom_themes/app_bar_theme.dart';
import 'package:find_jobs/core/theme/custom_themes/tab_bar_theme.dart';
import 'package:find_jobs/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class JAppTheme {
  JAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color.fromARGB(255, 26, 65, 222),
    brightness: Brightness.light,
    textTheme: JTextTheme.lightTextTheme,
    appBarTheme: JAppBarTheme.lightAppBarTheme,
    tabBarTheme: JTabBarTheme.lightTabBarTheme,
    primaryColorDark: Colors.grey[300],
    primaryColorLight: Colors.grey[100],
    highlightColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: const Color.fromARGB(255, 26, 65, 222),
    textTheme: JTextTheme.darkTextTheme,
    appBarTheme: JAppBarTheme.darkAppBarTheme,
    tabBarTheme: JTabBarTheme.darkTabBarTheme,
    primaryColorDark: Colors.grey[800],
    primaryColorLight: Colors.grey[700],
    highlightColor: Colors.black,
  );
}
