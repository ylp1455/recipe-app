import 'package:flutter/material.dart';

InputDecoration PrimaryTextComponent({
  String? MyHintText,
}) {
  return InputDecoration(
    hintText: MyHintText,
    fillColor: Color(0xFFDCCDBC),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    hintStyle: TextStyle(
      color: Colors.black, // Example color
      fontSize: 15.0, // Example font size
      fontWeight: FontWeight.w400,
      fontFamily:'Poppins',// Example font weight
    ),
  );
}