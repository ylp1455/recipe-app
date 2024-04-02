import 'package:flutter/material.dart';
import 'package:recipiapp/Screens/createAcc.dart';
import 'package:recipiapp/Screens/createNewPassword.dart';
import 'package:recipiapp/Screens/food.dart';
import 'package:recipiapp/Screens/forgotPassword.dart';
import 'package:recipiapp/Screens/home.dart';
import 'package:recipiapp/Screens/message.dart';
import 'package:recipiapp/Screens/recipiDetails.dart';
import 'package:recipiapp/Screens/register.dart';
import 'package:recipiapp/Screens/search.dart';
import 'package:recipiapp/Screens/settings.dart';
import 'package:recipiapp/Screens/verification.dart';
import 'package:recipiapp/Screens/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Message(),
  ));
}
