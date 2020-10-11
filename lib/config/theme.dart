import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';

/// Custom Material Color
const customBlack = MaterialColor(
  4280361249,
  {
    50: Color(0xfff2f2f2),
    100: Color(0xffe6e6e6),
    200: Color(0xffcccccc),
    300: Color(0xffb3b3b3),
    400: Color(0xff999999),
    500: Color(0xff808080),
    600: Color(0xff666666),
    700: Color(0xff4d4d4d),
    800: Color(0xff333333),
    900: Color(0xff191919)
  },
);

/// Build a light mode theme
ThemeData buildLightTheme(BuildContext context) {
  final ThemeData _theme = Theme.of(context);

  return _theme.copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.orange,
    appBarTheme: _theme.appBarTheme.copyWith(
      brightness: Brightness.light,
      color: Colors.white,
      elevation: defaultTargetPlatform == TargetPlatform.android ? 4.0 : 0.0,
      textTheme: TextTheme(
        headline6: GoogleFonts.titilliumWeb(
          textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: _theme.textTheme.copyWith(
      bodyText1: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.bodyText1.copyWith(
          color: Colors.black,
        ),
      ),
      bodyText2: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.bodyText2.copyWith(
          color: Colors.black,
        ),
      ),
      headline1: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.headline1.copyWith(
          color: Colors.black,
        ),
      ),
      headline2: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.headline2.copyWith(
          color: Colors.black,
        ),
      ),
      headline3: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.headline3.copyWith(
          color: Colors.black,
        ),
      ),
      headline4: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.headline4.copyWith(
          color: Colors.black,
        ),
      ),
      headline5: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.headline5.copyWith(
          color: Colors.black,
        ),
      ),
      headline6: GoogleFonts.titilliumWeb(
        textStyle: _theme.textTheme.headline6.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
      ),
    ),
    buttonTheme: _theme.buttonTheme.copyWith(
      buttonColor: Colors.orange,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(75),
        borderSide: BorderSide.none,
      ),
    ),
    inputDecorationTheme: _theme.inputDecorationTheme.copyWith(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      filled: true,
      fillColor: Colors.white,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[300],
          width: 2,
        ),
        borderRadius: BorderRadius.circular(75),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[300],
          width: 2,
        ),
        borderRadius: BorderRadius.circular(75),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(75),
      ),
    ),
  );
}

/// Build a darkmode theme
ThemeData buildDarkTheme(BuildContext context) {
  final ThemeData _theme = Theme.of(context);

  return _theme.copyWith(
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    backgroundColor: Colors.black,
    bottomAppBarColor: Colors.black,
    dialogBackgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: _theme.appBarTheme.copyWith(
      brightness: Brightness.dark,
      color: Colors.black,
      elevation: Platform.isIOS ? 0 : 2,
    ),
    textTheme: _theme.textTheme.copyWith(
      bodyText1: _theme.textTheme.bodyText1.copyWith(
        color: Colors.white,
      ),
      headline5: _theme.textTheme.headline5.copyWith(
        color: Colors.white,
      ),
    ),
  );
}
