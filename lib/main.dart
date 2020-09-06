import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
        id: 't1', title: 'New Tenis', value: 99.9, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shoes', value: 145.5, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pessoal Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              child: Text('Graph'),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          Column(
              children: _transactions
                  .map(
                    (tr) => Card(child: Text(tr.title)),
                  )
                  .toList()),
        ],
      ),
    );
  }
}
