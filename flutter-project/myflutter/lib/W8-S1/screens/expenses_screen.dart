import 'package:flutter/material.dart';
import 'package:myflutter/W8-S1/models/expense.dart';
import 'package:myflutter/W8-S1/screens/expenses_list.dart';


class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  List<Expense> _registeredExpenses = [
    Expense(
      title: 'book', 
      type: ExpenseType.Food,
      amount: 12, 
      date: DateTime.now()
    ),
    Expense(
      title: 'cenima',
      type: ExpenseType.Leisure,
      amount: 10,
      date: DateTime.now()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Expense App'),
        backgroundColor: Colors.blue,
      ),
      body: ExpensesList(expenses: _registeredExpenses),
      // body: 
      //   Center(
      //     child: Container(
      //       margin: const EdgeInsets.all(10.0),
      //       color: Colors.white,
      //       width: 60.0,
      //       height: 20.0,
      //         ),
      //   )

    );
  }
}