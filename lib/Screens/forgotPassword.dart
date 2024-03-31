import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:recipiapp/components/textcomp.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(gradient:LinearGradient(
      colors: [
        Color(0xFFD77E15), // #444141
        Color(0xFFFAEEDF), // #1D1C1C
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 80,),
              Text("Forgot Password?",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 32,
                color: Colors.white,
              ),),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/Lock.png"),
                ],
              ),
              SizedBox(height: 30,),
              Text("Enter your Email for the ",style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),),
              Text("verification process",style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 53,
                padding:  EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color:Color(0xFFDCCDBC), borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your Email",
                    fillColor: Color(0xFFDCCDBC),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Container(
                height: 49,
                width: 186,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFD77E15)),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
