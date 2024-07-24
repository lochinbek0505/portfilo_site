import 'package:flutter/material.dart';

import '../constains/colors.dart';
import '../constains/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //platform
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  // margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: CustomColors.bgLight12,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 26,
                    ),
                    title: Text(platformItems[i]["title"]),
                  ),
                  width: 200,
                )
            ],
          ),
        ),
        SizedBox(
          width: 50,
        ),

        //skills
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  Chip(
                    backgroundColor: CustomColors.bgLight12,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    label: Text(skillItems[i]["title"]),
                    avatar: Image.asset(skillItems[i]["img"]),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
