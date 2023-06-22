import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waterwise/constant.dart';

class ClickableContainer extends StatelessWidget {
  final int index;
  final bool isSelected;
  final Function(int) onTap;
  final String iconImagePath;
  final String text;
  final Color iconColor;
  final Color textColor;

  const ClickableContainer({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onTap,
    required this.iconImagePath,
    required this.text,
    required this.iconColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);

        // switch (index) {
        //   case 0:
        //     Navigator.pushNamed(context, '/home');
        //     break;
        //   case 1:
        //     Navigator.pushNamed(context, '/wlimit');
        //     break;
        //   case 2:
        //     Navigator.pushNamed(context, '/wbill');
        //     break;
        // }
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? tWhite : tBlue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconImagePath,
              width: 24,
              height: 24,
              color: isSelected ? iconColor : tWhite,
            ),
            const SizedBox(height: 8),
            Text(
              text,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                  color: isSelected ? textColor : tWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
