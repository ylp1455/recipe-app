import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                                children: [
                                  Text(
                                    "Make your own food,",
                                    style:TextStyle(
                                      fontFamily:'Poppins',
                                      fontSize: 29,
                                      color:Color(0xFFD77E15),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Stay at home",
                                    style: TextStyle(
                                      fontSize: 33,
                                      color:Color(0xFFD77E15),
                                    ),
                                    //style: SecondaryTextGrayStyle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 70,
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
                                  child: Text("Register",style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily:'Poppins',
                                  ),
                                  ),
                                ),
                                ) ,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 50,
                                width: 179,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color(0xFFFFFFFF)
                                ),
                                child:Center(child: TextButton(
                                  onPressed: (){},
                                  child: Text("Sign in",style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFFD77E15),
                                    fontFamily:'Poppins',
                                  ),
                                  ),
                                ),
                                ) ,
                              ),
                              SizedBox(
                                height:50,
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
