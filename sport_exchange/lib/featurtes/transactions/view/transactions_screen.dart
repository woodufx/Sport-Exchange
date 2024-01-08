import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Транзакции');
  }
}
