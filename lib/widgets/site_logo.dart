import 'package:flutter/material.dart';

import '../constains/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Lochinbek",
        style: TextStyle(
          fontSize: 22,
          decoration: TextDecoration.underline,
          color: CustomColors.yellowPrimary,
        ),
      ),
    );
  }
}
