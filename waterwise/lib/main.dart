import 'package:flutter/material.dart';
import 'package:waterwise/constant.dart';
import 'package:waterwise/screens/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    final double appBarHeight = 37 / devicePixelRatio;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: tBlue,
          ),
        ),
        body: const MainPage(),
      ),
    );
  }
}
