import 'package:flutter/material.dart';
import 'package:recipiapp/components/textcomp.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});
  State<Welcome> createState() => _loginScreenState();
}

class _loginScreenState extends State<Welcome> {
  late bool _passwordVisible;

  @override
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Regimg.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment(0, 1.2),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF444141),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Welcome",
                                    style:TextStyle(
                                      fontFamily:'Poppins',
                                      fontSize: 40,
                                      color:Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Time to cook, Let’s Sign in",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:Color(0xFFFFFFFF),
                                      fontFamily:'Poppins',
                                    ),
                                    //style: SecondaryTextGrayStyle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      filled: true,
                                      hintStyle: TextStyle(
                                        color: Color(0xFF000000),
                                        fontFamily:'Poppins',),
                                      hintText: "Email",
                                      fillColor: Color(0xFFDCCDBC),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    obscureText: !_passwordVisible,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      filled: true,
                                      hintStyle: TextStyle(color: Color(0xFF000000),
                                          fontFamily:'Poppins'
                                      ),
                                      hintText: "Password",
                                      fillColor: Color(0xFFDCCDBC),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      print("Text clicked");
                                    },
                                    child: Text("Forgot Password?",style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 179,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xFFD77E15)
                                    ),
                                    child:Center(child: TextButton(
                                      onPressed: (){},
                                      child: Text("Sign In",style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily:'Poppins',
                                      ),
                                      ),
                                    ),
                                    ) ,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("First time here?",style: TextStyle(
                                        fontSize: 15,
                                        fontFamily:'Poppins',
                                        color: Colors.white,
                                      ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          print("signup pressed");
                                        },
                                        child: Text(" Sign Up",style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontFamily:'Poppins',
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.white,
                                        ),
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
            )
          ],
        ),
      ),
    );
  }
}
