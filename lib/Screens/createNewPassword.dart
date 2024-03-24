import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipiapp/components/textcomp.dart';
class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  late bool _passwordVisible;

  void initState() {
    _passwordVisible = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFD77E15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        fontFamily: 'Poppins',
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      "Your Account",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        fontFamily: 'Poppins',
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: screenHeight,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF444141), // #444141
                      Color(0xFF1D1C1C), // #1D1C1C
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      SizedBox(height: 45,),
                      RichText(
                        text: TextSpan(
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Your new password must be ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'different from previous password',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      Container(
                        child: Column(children: [
                          TextField(
                            obscureText: !_passwordVisible,
                            decoration: PrimaryTextComponent(
                                MyHintText: "Password"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: !_passwordVisible,
                            decoration: PrimaryTextComponent(
                                MyHintText: "Confirm Password"),
                          ),
                        ]),
                      ),
                      SizedBox(height: 45,),
                      Container(
                        height: screenHeight * 0.08, // Adjusted height
                        width: 230, // Adjusted width
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFD77E15)),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Reset Password",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
