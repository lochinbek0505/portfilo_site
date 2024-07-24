import 'package:flutter/material.dart';
import 'package:portfilo_site/styles/styles.dart';
import 'package:portfilo_site/widgets/site_logo.dart';

import '../constains/colors.dart';
import '../constains/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });

  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      decoration: kHeadedDecoration,
      child: Row(children: [
        SiteLogo(
          onTap: () {},
        ),
        const Spacer(),
        for (int i = 0; i < navTitles.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.whitePrimary),
                )),
          )
      ]),
    );
  }
}
