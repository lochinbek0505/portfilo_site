import 'package:flutter/material.dart';
import 'package:portfilo_site/widgets/project_card_widjet.dart';

import '../constains/colors.dart';
import '../utils/project_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //work projects
          Text(
            "Work Projects",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColors.whitePrimary),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(spacing: 25, runSpacing: 25, children: [
              for (int i = 0; i < workProjectUtils.length; i++)
                ProjectCardWidjet(
                  projectUtils: workProjectUtils[i],
                ),
            ]),
          ),

          //hobby porjects
          SizedBox(
            height: 80,
          ),
          Text(
            "Hobby Projects",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColors.whitePrimary),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(spacing: 25, runSpacing: 25, children: [
              for (int i = 0; i < hobbyProjectUtils.length; i++)
                ProjectCardWidjet(
                  projectUtils: hobbyProjectUtils[i],
                ),
            ]),
          ),
        ],
      ),
    );
  }
}
