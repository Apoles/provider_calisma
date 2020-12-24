

import 'package:flutter/material.dart';



class ColorThemeData  with ChangeNotifier {
  final ThemeData greenTheme=  ThemeData(
    primaryColor: Colors.green,
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green,
    accentColor: Colors.green,
    appBarTheme: AppBarTheme(
      color: Colors.green,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white)),
  );
  final ThemeData redTheme=ThemeData(
    primaryColor: Colors.red[900],
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red[900],
    accentColor: Colors.red[900],
    appBarTheme: AppBarTheme(
      color: Colors.red[900],
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white)),
  );

  ThemeData _selectedThemeData=ThemeData(
    primaryColor: Colors.green,
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green,
    accentColor: Colors.green,
    appBarTheme: AppBarTheme(
      color: Colors.green,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white)),
  );

  void switchTheme(bool select){
    _selectedThemeData=select?greenTheme:redTheme;
    notifyListeners();

  }
  ThemeData get selectedThemeData=>_selectedThemeData;


}
