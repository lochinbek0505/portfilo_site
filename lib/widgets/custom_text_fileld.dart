import 'package:flutter/material.dart';

import '../constains/colors.dart';

class CustomTextFileld extends StatelessWidget {
  const CustomTextFileld({
    super.key,
    this.controller,
    this.hintText,
    this.maxLine = 1,
  });

  final TextEditingController? controller;
  final int maxLine;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      cursorColor: Colors.blue,
      style: TextStyle(color: CustomColors.scaffoldBG),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          filled: true,
          fillColor: CustomColors.whiteSecondary,
          focusedBorder: getBorder,
          enabledBorder: getBorder,
          border: getBorder,
          hintText: hintText,
          hintStyle: TextStyle(
            color: CustomColors.hintDark,
          )),
    );
  }

  OutlineInputBorder get getBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
