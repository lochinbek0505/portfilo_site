import 'package:flutter/material.dart';

import '../constains/colors.dart';
import '../constains/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: CustomColors.bgLight12,
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 26,
                ),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  backgroundColor: CustomColors.bgLight12,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"]),
                )
            ],
          )
        ],
      ),
    );
  }
}
