import 'package:flutter/material.dart';

import '../constains/colors.dart';

class MainMobile extends StatelessWidget {
  MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: size.height,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          //avatar image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColors.scaffoldBG.withOpacity(0.6),
                CustomColors.scaffoldBG.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/icon.png",
              height: 150,
              width: size.width,
            ),
          ),
          //into txt
          SizedBox(
            height: 15,
          ),
          Text(
            "Hi,\nI'm Lochin Tovmurodov  \nAndroid/Flutter  Developer",
            style: TextStyle(
                fontSize: 20,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColors.whitePrimary),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 220,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.yellowPrimary,
              ),
              child: Text(
                "Get in touch",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          //btn
        ],
      ),
    );
  }
}
