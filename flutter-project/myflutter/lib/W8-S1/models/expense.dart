import 'package:uuid/uuid.dart';

enum ExpenseType{Food, Travel, Leisure, Work}

class Expense {
  static Uuid uuid = const Uuid();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseType type;

  Expense({required this.type, required this.title, required this.amount, required this.date})
  :id = uuid.v4();
}

