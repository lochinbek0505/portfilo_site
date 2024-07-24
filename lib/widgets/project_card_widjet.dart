import 'package:flutter/material.dart';
import 'package:portfilo_site/utils/project_utils.dart';

import '../constains/colors.dart';
import 'dart:js' as js;

class ProjectCardWidjet extends StatelessWidget {
  const ProjectCardWidjet({super.key, required this.projectUtils});

  final ProjectUtils projectUtils;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 290,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.bgLight12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            projectUtils.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectUtils.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColors.whitePrimary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projectUtils.subtitle,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.whitePrimary),
            ),
          ),
          const Spacer(),
          Container(
            color: CustomColors.bgLight11,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: TextStyle(
                      color: CustomColors.yellowSecondary, fontSize: 10),
                ),
                Spacer(),
                if (projectUtils.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context
                            .callMethod("open", [projectUtils.androidLink]);
                      },
                      child: Image.asset(
                        "assets/android_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
                if (projectUtils.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectUtils.iosLink]);
                      },
                      child: Image.asset(
                        "assets/ios_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
                if (projectUtils.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectUtils.webLink]);
                      },
                      child: Image.asset(
                        "assets/web_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
