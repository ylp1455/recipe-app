import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipiapp/components/bottomNavigation.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(gradient:LinearGradient(
      colors: [
        Color(0xFF444141), // #444141
        Color(0xFF1D1C1C), // #1D1C1C
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    ),
      bottomNavigationBar: SizedBox(height:70,child: BottomMainNavigationBar()),
      appBar: AppBar(
        toolbarHeight: 86,
        backgroundColor:Color(0xFFD77E15),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            fontFamily: 'Poppins',
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: (){},
                                child: Image.asset("images/Profileuser.png")),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ganidu Happuarachhi",style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.black
                                ),),
                                Text("Restaurant Chef:",style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.black
                                ),),
                                Row(
                                  children: [
                                    Text("data")
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
