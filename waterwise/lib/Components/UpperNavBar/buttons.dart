import 'package:flutter/material.dart';
import 'package:waterwise/constant.dart';

import 'clickable.dart';

class NavButtons extends StatefulWidget {
  const NavButtons({Key? key}) : super(key: key);

  @override
  State<NavButtons> createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {
  late int selectedContainerIndex;

  @override
  void initState() {
    super.initState();
    selectedContainerIndex = 0;
  }

  void _onContainerClicked(int index) {
    setState(() {
      if (selectedContainerIndex == index) {
        selectedContainerIndex = 0;
      } else {
        selectedContainerIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClickableContainer(
            index: 0,
            isSelected: selectedContainerIndex == 0,
            onTap: _onContainerClicked,
            iconImagePath: 'asset/Images/home.png',
            text: 'Home',
            iconColor: tBlue,
            textColor: tBlue,
          ),
        ),
        Expanded(
          child: ClickableContainer(
            index: 1,
            isSelected: selectedContainerIndex == 1,
            onTap: _onContainerClicked,
            iconImagePath: 'asset/Images/wlimit.png',
            text: 'W-Limit',
            iconColor: tBlue,
            textColor: tBlue,
          ),
        ),
        Expanded(
          child: ClickableContainer(
            index: 2,
            isSelected: selectedContainerIndex == 2,
            onTap: _onContainerClicked,
            iconImagePath: 'asset/Images/wbill.png',
            text: 'W-Bill',
            iconColor: tBlue,
            textColor: tBlue,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: ClickableContainer(
            index: 3,
            isSelected: selectedContainerIndex == 3,
            onTap: _onContainerClicked,
            iconImagePath: 'asset/Images/alert.png',
            text: 'Alert',
            iconColor: tBlue,
            textColor: tBlue,
          ),
        ),
        Expanded(
          child: ClickableContainer(
            index: 4,
            isSelected: selectedContainerIndex == 4,
            onTap: _onContainerClicked,
            iconImagePath: 'asset/Images/profile.png',
            text: 'Profile',
            iconColor: tBlue,
            textColor: tBlue,
          ),
        ),
      ],
    );
  }
}
