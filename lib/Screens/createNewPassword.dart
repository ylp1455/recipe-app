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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFD77E15),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 25,
                    ),
                    child: Expanded(
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
                                "New Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 36,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
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
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
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
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "I agree to the",
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
                                              "Terms  & Condition",
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
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 55
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
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Column(
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
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
