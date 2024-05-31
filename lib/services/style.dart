// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppStyle {
  // COLOR

  //  Brand
  static Color PRIMERYCOLOR = const Color.fromARGB(255, 96, 114, 252);

  // Gray color
  static Color GRAY_0 = const Color(0xFF171717);
  static Color GRAY_50 = const Color(0xFF202020);
  static Color GRAY_100 = const Color(0xFF2A2A2A);
  static Color GRAY_200 = const Color(0xFF3B3A3A);
  static Color GRAY_500 = const Color(0xFF7C7C7C);
  static Color GRAY_600 = const Color(0xFFAFAFAF);
  static Color GRAY_700 = const Color(0xFFDFDFDF);
  static Color GRAY_800 = const Color(0xFFE9E9E9);
  static Color GRAY_900 = const Color(0xFFF5F5F5);
  static Color WHITE = const Color(0xFFFFFFFF);

  // Info
  static Color ERROR = const Color(0xFFFC6075);

  // RADIUS
  static double RADIUS_SM = 4;
  static double RADIUS_MD = 8;
  static double RADIUS_LG = 16;
  static double RADIUS_XL = 24;
  static double RADIUS_2XL = 32;
  static double RADIUS_3XL = 64;
  static double RADIUS_4XL = 128;

  // SPACING
  static double SPACING_NONE = 0;
  static double SPACING_XXS = 2;
  static double SPACING_XS = 4;
  static double SPACING_SM = 8;
  static double SPACING_LG = 16;

  static double SPACING_XL = 24;
  static double SPACING_2XL = 32;
  static double SPACING_3XL = 64;
  static double SPACING_5XL = 96;
  static double SPACING_6XL = 128;

  // Icons size
  static double ICON_SM = 4;
  static double ICON_NORMAL = 16;
  static double ICON_NX = 20;
  static double ICON_LARG = 24;
  static double ICON_XL = 32;
  static double ICON_2XL = 40;

  ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: GRAY_0,
      disabledColor: GRAY_100,
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gapPadding: 4,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: GRAY_100,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: GRAY_900,
          height: 1.5,
          fontSize: 24,
        ),
        displayMedium: TextStyle(
          color: GRAY_900,
          height: 1.5,
          fontSize: 20,
        ),
        displaySmall: TextStyle(
          color: GRAY_900,
          height: 1.5,
          fontSize: 18,
        ),
        bodyLarge: TextStyle(
          color: GRAY_900,
          height: 1.5,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: GRAY_900,
          height: 1.5,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          color: GRAY_600,
          height: 1.5,
        ),
      ),
      cardColor: GRAY_50,
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: PRIMERYCOLOR,
      unselectedWidgetColor: Colors.transparent,
    );
  }

  ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: GRAY_900,
      disabledColor: GRAY_800,
      cardColor: WHITE,
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          gapPadding: 4,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: WHITE,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: GRAY_50,
          height: 1.5,
          fontSize: 24,
        ),
        displayMedium: TextStyle(
          color: GRAY_50,
          height: 1.5,
          fontSize: 20,
        ),
        displaySmall: TextStyle(
          color: GRAY_50,
          height: 1.5,
          fontSize: 18,
        ),
        bodyLarge: TextStyle(
          color: GRAY_50,
          height: 1.5,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: GRAY_50,
          height: 1.5,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          color: GRAY_500,
          height: 1.5,
        ),
      ),
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: PRIMERYCOLOR,
    );
  }
}
