import 'package:flutter/material.dart';


ThemeData currentTheme(context) => Theme.of(context);

ColorScheme getColorScheme(context) => currentTheme(context).colorScheme;

TextStyle? fontW5S12(context) => currentTheme(context).textTheme.headline1;

TextStyle? fontW4S12(context) => currentTheme(context).textTheme.headline2;

TextStyle? fontW3S12(context) => currentTheme(context).textTheme.headline3;

Color primaryColor(context) => currentTheme(context).primaryColor;

Color secondryColor(context) => getColorScheme(context).secondary;

Color acentColor() => const Color(0xff2A364E);

Color grayColor() => const Color(0xffB9B9B9);

class AppTheme {
  //
  static var themeData = ThemeData(
    fontFamily: "Montserrat",
    dialogBackgroundColor: Colors.grey,
    primaryColor: const Color(0xff232D40),
    colorScheme:
        ColorScheme.fromSwatch(accentColor: const Color(0xff2A364E)).copyWith(
      secondary: const Color(0xffFFB265),
      brightness: Brightness.dark,
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xff232D40),
    appBarTheme: const AppBarTheme(
      color: Color(0xff232D40),
      elevation: 0.0,
      centerTitle: true,
    ),
    bottomAppBarColor: const Color(0xff232D40),
    hintColor: Colors.white,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Color(0xff232D40)),
    textTheme: const TextTheme(
      headline1: TextStyle(
          color: Color(0xffffffff),
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat-Medium',
          fontStyle: FontStyle.normal,
          fontSize: 12,
          overflow: TextOverflow.ellipsis),
      headline2: TextStyle(
          color: Color(0xffffffff),
          fontWeight: FontWeight.w400,
          fontFamily: 'Montserrat-Regular',
          fontSize: 12,
          fontStyle: FontStyle.normal,
          overflow: TextOverflow.ellipsis),
      headline3: TextStyle(
          color: Color(0xffffffff),
          fontWeight: FontWeight.w300,
          fontFamily: 'Montserrat-regular',
          fontStyle: FontStyle.normal,
          fontSize: 12,
          overflow: TextOverflow.ellipsis),
    ),
  );
}
