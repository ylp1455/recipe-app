import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:recipiapp/components/bottomNavigation.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    String foodName = "Roti";
    return ScaffoldGradientBackground(
        gradient: LinearGradient(
          colors: [
            Color(0xFF444141), // #444141
            Color(0xFF1D1C1C), // #1D1C1C
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        bottomNavigationBar:
            SizedBox(height: 70, child: BottomMainNavigationBar()),
        appBar: AppBar(
          toolbarHeight: 86,
          backgroundColor: Color(0xFFD77E15),
          title: Text(
            foodName,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              fontFamily: 'Poppins',
              color: Color(0xFFFFFFFF),
            ),
          ),
            actions: [
          Transform.scale(
          scale: 1.5,
          child: IconButton(
            onPressed:(){},
            icon:Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ),
          ],
        ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage("images/food.png"),),
                        Text("Flaky flatbreads typically accompany curries or are filled with spiced ingredients."
                        ,style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                      //  Image(image: AssetImage("images/food.png"),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Ingredients",style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )
                            ),),
                          ],
                        ),
                        Text("Atta Flour (Chapati Flour): 2 cups. This whole wheat flour is key for roti. Do not substitute with regular all-purpose flo"
                          ,style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text("Warm Water: About 1 cup add pleasess"
                          ,style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
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
