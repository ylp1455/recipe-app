import 'package:flutter/material.dart';
import 'package:recipiapp/components/textcomp.dart';

class CreateAccountt extends StatefulWidget {
  const CreateAccountt({super.key});

  @override
  State<CreateAccountt> createState() => _CreateAccounttState();
}

class _CreateAccounttState extends State<CreateAccountt> {
  late bool _passwordVisible;
  bool? isChecked = true;
  void initState() {
    _passwordVisible = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color:Color(0xFFD77E15),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
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
                  ],
                  ),
                  Row(
                    children: [
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
                ],
              ),
            ),
            Expanded(
                child:SingleChildScrollView(
                  child: Container(
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
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              TextField(
                                decoration: PrimaryTextComponent(
                                    MyHintText: "Name"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: PrimaryTextComponent(
                                    MyHintText: "Email"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: !_passwordVisible,
                                decoration: PrimaryTextComponent(
                                    MyHintText: "Password"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: !_passwordVisible,
                                decoration: PrimaryTextComponent(
                                    MyHintText: "Confirm Password"),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                              ),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    "I agree to the ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("terms clicked");
                                    },
                                    child: Text(
                                      "Terms  & Condition ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF1976D2),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "and",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFFFFFFFF),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 65
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      print("Privacy clicked");
                                    },
                                    child: Text(
                                      "Privacy Policy",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFFD77E15),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              Container(
                                height: 51,
                                width: 307,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Color(0xFFD77E15)),
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Create Account",
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
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 51,
                                width: 307,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Color(0xFFD77E15)),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5, left: 20),
                                        child: Image(
                                            image: AssetImage(
                                                "images/google.png")),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Sign Up with Google",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight:
                                            FontWeight.w600,
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an Account?",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print("signin pressed");
                                },
                                child: Text(
                                  " Sign In",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    decoration:
                                    TextDecoration.underline,
                                    decorationColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}