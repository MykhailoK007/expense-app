import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var myColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromRGBO(68, 138, 255, 1));

var myDarkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 32, 46, 71),
    brightness: Brightness.dark);
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData().copyWith(
        colorScheme: myDarkColorScheme,
        cardTheme: CardTheme(
          color: myDarkColorScheme.secondaryContainer,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: myDarkColorScheme.primaryContainer,
              foregroundColor: myDarkColorScheme.onPrimaryContainer),
        ),
        textTheme:
            TextTheme().copyWith(titleLarge: TextStyle(color: Colors.white)),
      ),
      theme: ThemeData().copyWith(
        colorScheme: myColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: myColorScheme.onPrimaryContainer,
          foregroundColor: myColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: myColorScheme.secondaryContainer,
        ),
      ),
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
}
