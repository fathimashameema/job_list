import 'package:find_jobs/core/utils/colors/colors.dart';

import 'package:flutter/material.dart';

class JAppBarTheme {
  JAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: JColors.themeColor,
    toolbarHeight: 80,
    titleSpacing: 15,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: JColors.themeColor,
    toolbarHeight: 80,
    titleSpacing: 15,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
