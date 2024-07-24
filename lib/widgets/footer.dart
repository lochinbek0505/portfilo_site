import 'package:flutter/material.dart';

import '../constains/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        "Made by Lochinbek  Tovmurodov with Flutter 2024",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: CustomColors.whiteSecondary,
        ),
      ),
    );
  }
}
