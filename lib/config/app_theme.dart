import 'package:flutter/material.dart';

import '../../util/colors.dart';
import '../../util/fonts.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(
                overflow: TextOverflow.fade,
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: SharedColors.bahasoWhiteColor),
            elevation: 0,
            color: SharedColors.bahasoPrimaryColor,
            iconTheme: IconThemeData(color: SharedColors.bahasoWhiteColor)),
        primaryColor: SharedColors.bahasoPrimaryColor,
        fontFamily: SharedFontFamily.lato,
        scaffoldBackgroundColor: SharedColors.bahasoWhiteColor);
  }
}

class ApplicationDefaultPixel {
  static double maxWidth = double.infinity;
  static double maxHeight = 926;
  static double minWidth = 428;
  static double minHeight = 926;
}
