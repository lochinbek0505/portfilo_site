import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfilo_site/constains/size.dart';
import 'package:portfilo_site/constains/sns_links.dart';

import '../constains/colors.dart';
import 'custom_text_fileld.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColors.bgLight11,
      child: Column(
        children: [
          Text(
            "Get in touch",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColors.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 700,
                maxHeight: 100,
              ),
              child: LayoutBuilder(
                builder: (context, constants) {
                  if (constants.maxWidth >= kMinDesktopWidth) {
                    return buildNameEmailFieldDesktop();
                  } else {
                    return buildNameEmailFieldMobile();
                  }
                },
              )),
          SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextFileld(
              hintText: "Your message",
              maxLine: 20,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Get in Touch",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.yellowPrimary),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  "github2.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedin]);
                },
                child: Image.asset(
                  "linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset(
                  "instagram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.telegram]);
                },
                child: Image.asset(
                  "telegram.png",
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextFileld(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextFileld(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextFileld(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextFileld(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }
}
