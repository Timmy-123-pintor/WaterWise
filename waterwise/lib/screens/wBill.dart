import 'package:flutter/material.dart';

import '../constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: tBlue,
      ),
      initialRoute: '/',
      routes: {
        '/wbill': (context) => const WBill(),
      },
    );
  }
}

class WBill extends StatelessWidget {
  const WBill({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Bill',
      style: TextStyle(
        fontSize: 100,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
