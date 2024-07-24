import 'package:flutter/material.dart';

import '../constains/colors.dart';
import '../constains/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
    required this.onNavItemTap,
  });

  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.scaffoldBG,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < navIcon.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: TextStyle(
                  color: CustomColors.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(navIcon[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
