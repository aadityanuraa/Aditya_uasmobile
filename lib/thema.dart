import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData background() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Cerbetica",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: warnaText),
    bodyText2: TextStyle(color: warnaText),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: warnaPrimer,
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(24),
    borderSide: BorderSide(color: warnaText),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
