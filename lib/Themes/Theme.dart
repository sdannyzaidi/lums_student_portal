import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primary_color = Color(0xFFEA5757);
const Color inputFill = Color(0xFFEFEAEA);
const Color accent = Color(0xFFD04343);
const Color deepOrange = Colors.deepOrange ;

ButtonThemeData createButtonTheme(){
  return ButtonThemeData(
    alignedDropdown: true,
  );
}

SnackBarThemeData createSnackBarTheme () {
  return SnackBarThemeData(
    backgroundColor: accent,
  );
}

InputDecorationTheme createInputDecorTheme(){
  InputDecorationTheme initial = ThemeData.light().inputDecorationTheme ;
  return initial.copyWith(
    fillColor: inputFill,
    filled: true,
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: const BorderRadius.all( Radius.circular(5.0)),
    ),
    labelStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: const BorderRadius.all( Radius.circular(5.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputFill , width: 0),
      borderRadius: const BorderRadius.all( Radius.circular(5.0)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: deepOrange , width: 2),
      borderRadius: const BorderRadius.all( Radius.circular(5.0)),
    )
  );
}

TextTheme createTextTheme (){
  TextTheme initial = ThemeData.light().textTheme ;
  return initial.copyWith(
    // for App Bar Titles
    headline6: initial.headline1!.copyWith(
      color: Colors.black,
      fontSize: 40,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
    ),
    // For Normal Text
    bodyText2: initial.bodyText2!.copyWith(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
    // For Buttons
    headline5: initial.headline5!.copyWith(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );
}

ElevatedButtonThemeData createElevatedButtonTheme(){
  ElevatedButtonThemeData initial = ThemeData().elevatedButtonTheme ;
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary_color,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)
        ),
        elevation: 10,
      ),
  );
}

AppBarTheme createAppBarTheme () {
  return AppBarTheme(
    centerTitle: true,
    elevation: 0 ,
  );
}
/*
ThemeData theme () {

  AppBarTheme mainAppBarTheme (AppBarTheme base){
    return base.copyWith(
      centerTitle: true,
      foregroundColor: Colors.blue ,
    );
  }
  TextTheme mainTextTheme (TextTheme base){
    return base.copyWith(
      bodyText1: base.bodyText1.copyWith(
        fontSize: 15,
        color: Colors.black,
      )
    );
  }
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Colors.redAccent,
    textTheme: mainTextTheme(base.textTheme),
    appBarTheme: mainAppBarTheme(base.appBarTheme),
  ) ;
}*/
