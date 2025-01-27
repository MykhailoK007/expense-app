import 'package:expense_tracker_app/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        theme:
            ThemeData(colorSchemeSeed: const Color.fromRGBO(68, 138, 255, 1)),
        home: Expenses()),
  );
}
