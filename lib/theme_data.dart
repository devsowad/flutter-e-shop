import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: appBarThemeData(),
    textTheme: textThemeData(),
    inputDecorationTheme: inputDecorationTheme(),
    elevatedButtonTheme: elevatedButtonThemeData(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: kPrimaryColor,
          secondary: kSecondaryColor,
        ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color>(kPrimaryColor),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );

  OutlineInputBorder outlineFocusedInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kPrimaryColor),
    gapPadding: 10,
  );

  OutlineInputBorder outlineErrorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kErrorColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineFocusedInputBorder,
    errorBorder: outlineErrorInputBorder,
    focusedErrorBorder: outlineErrorInputBorder,
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
