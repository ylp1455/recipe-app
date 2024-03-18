import 'package:flutter/material.dart';

class Textstylee extends StatelessWidget {
  late String textStatement = "Hello";
  Color fontColor = Color(0xffFFFFFF);
  FontWeight fontWeight = FontWeight.w400;
  double fontSize = 15.0;
  String fontFamily = "Poppins";

  Textstylew(
      {fontColor, fontSize, fontWeight, fontFamily}) {
    this.textStatement = textStatement;

    if (fontColor != null) {
      this.fontColor = fontColor;
    }

    if (fontWeight != null) {
      this.fontWeight = fontWeight;
    }

    if (fontSize != null) {
      this.fontSize = fontSize;
    }

    if (fontFamily != null) {
      this.fontFamily = fontFamily;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      textStatement,
      style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight),
    );
  }
}