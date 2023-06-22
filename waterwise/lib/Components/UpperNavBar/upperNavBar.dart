// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'buttons.dart';
// import 'package:waterwise/constant.dart';

class UpperNavBar extends StatefulWidget {
  const UpperNavBar({super.key});

  @override
  State<UpperNavBar> createState() => _UpperNavBarState();
}

class _UpperNavBarState extends State<UpperNavBar> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: NavButtons(),
    );
  }
}
