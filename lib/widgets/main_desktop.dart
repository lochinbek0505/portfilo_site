import 'package:flutter/material.dart';

import '../constains/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: size.height / 1.4,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\nI'm Lochin Tovmurodov  \nAndroid/Flutter  Developer",
                style: TextStyle(
                    fontSize: 21,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whitePrimary),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 250,
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
            ],
          ),
          Image.asset(
            "assets/icon.png",
            height: 170,
            width: size.width / 2,
          )
        ],
      ),
    );
  }
}
