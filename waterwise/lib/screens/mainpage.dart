import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // import 'package:waterwise/Components/upperNavBar.dart';
import 'package:waterwise/constant.dart';
import '../Components/UpperNavBar/upperNavBar.dart';
import '../conScreen.dart/prevConsumption.dart';
import '../conScreen.dart/waterCon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MainPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tBlue,
      body: Column(
        children: [
          Container(
            height: 37,
            width: double.infinity,
            color: tBlue,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset(
                    'asset/Images/waterlogo.png',
                    width: 33,
                    height: 33,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'WaterWise+',
                    style: GoogleFonts.quicksand(
                      textStyle: waterStyle,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Handle logout action
                    },
                    child: Image.asset(
                      'asset/Images/logout.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: tBlue,
            child: const UpperNavBar(),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: tWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  WaterConsumption(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        PrevComCon(),
                        SizedBox(
                          width: 10,
                        ),
                        PrevComCon(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
