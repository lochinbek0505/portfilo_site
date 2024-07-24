import 'package:flutter/material.dart';
import 'package:portfilo_site/widgets/site_logo.dart';

import '../styles/styles.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: kHeadedDecoration,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SiteLogo(
              onTap: onLogoTap,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: Icon(Icons.menu),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
