import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: appBarThemeData(),
    textTheme: textThemeData(),
    elevatedButtonTheme: elevatedButtonThemeData(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ElevatedButtonThemeData elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
      elevation: MaterialStateProperty.all<double>(10),
    ),
  );
}

TextTheme textThemeData() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
    headline6: TextStyle(color: kTextColor, fontSize: 18),
    headline1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

AppBarTheme appBarThemeData() {
  return const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    iconTheme: IconThemeData(color: Colors.black),
  );
}
