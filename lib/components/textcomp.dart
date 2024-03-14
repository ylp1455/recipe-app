import 'package:flutter/material.dart';

InputDecoration PrimaryTextComponent({
  String? MyHintText,
}) {
  return InputDecoration(
    hintText: MyHintText,
    fillColor: Color(0xFFDCCDBC),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    hintStyle: TextStyle(
      color: Color(0xFF000000),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: 15,
    ),
  );
}
