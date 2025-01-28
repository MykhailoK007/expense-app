import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final uuid = const Uuid();
final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const Map<Category, IconData> categoryIcons = {
  Category.food: Icons.fastfood_rounded,
  Category.leisure: Icons.two_wheeler_outlined,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.wallet_travel,
};

class Expense {
  Expense({
    required this.amount,
    required this.title,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }

  String get formattedAmount {
    return '\$${amount.toStringAsFixed(2)}';
  }
}

class ExpenseBucket {
  ExpenseBucket({required this.expenses});

  Category category = Category.food;

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final List<Expense> expenses;

  double get totalAmount {
    double sum = 0;
    for (var item in expenses) {
      sum += item.amount;
    }
    return sum;
  }
}
