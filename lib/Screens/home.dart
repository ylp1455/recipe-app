import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipiapp/components/bottomNavigation.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'dart:math' as math;
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Sunmanasiri Sarabawan";
    String subText = "Sunmanasiri";
    String description = "Flaky flatbreads are served alongside curries or stuffed with flavorful fillings.";
    String imgPath = "images/containImg.png";
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ScaffoldGradientBackground(
      gradient:LinearGradient(
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
          "Foodiegram",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            fontFamily: 'Poppins',
            color: Color(0xFFFFFFFF),
          ),
        ),
        actions: [
          Transform.scale(
            scale: 1.2,
            child:InkWell(
              onTap: (){},
              child: ImageIcon(
                AssetImage("images/box.png"),
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Transform.scale(
            scale: 1.2,
            child:InkWell(
              onTap: (){},
              child: ImageIcon(
                AssetImage("images/send.png"),
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
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
      body:Padding(
        padding: EdgeInsets.all(25),
        child:ListView(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFD0D0D0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              print("profile clicked");
                            },
                            child: ImageIcon(
                              AssetImage("images/user2.png"),
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 3,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,style:GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight:FontWeight.w500,

                                ),
                              ) ,
                              ),
                              Text(subText,style:GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight:FontWeight.w200,
                                  height: 0.8,
                                ),
                              ) ,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.2,),
                    Image(image: AssetImage(imgPath)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 6,
                        top: 4,
                      ),
                      child: Text(description,
                        style:GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight:FontWeight.w300
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        top: 2,
                        bottom: 6,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(width: 5,),
                          Icon(Icons.share_rounded),
                          SizedBox(width: 5,),
                          Icon(Icons.chat_bubble_outline),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFD0D0D0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              print("profile clicked");
                            },
                            child: ImageIcon(
                              AssetImage("images/user2.png"),
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 3,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sunmanasiri Sarabawan",style:GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight:FontWeight.w500,

                                ),
                              ) ,
                              ),
                              Text("Sunmanasiri Sarabawan",style:GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight:FontWeight.w200,
                                  height: 0.8,
                                ),
                              ) ,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.2,),
                    Image(image: AssetImage("images/containImg.png")
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 6,
                        top: 4,
                      ),
                      child: Text("Flaky flatbreads are served alongside curries or stuffed with flavorful fillings.",
                        style:GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight:FontWeight.w300
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        top: 2,
                        bottom: 6,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(width: 5,),
                          Icon(Icons.share_rounded),
                          SizedBox(width: 5,),
                          Icon(Icons.chat_bubble_outline),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFD0D0D0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              print("profile clicked");
                            },
                            child: ImageIcon(
                              AssetImage("images/user2.png"),
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 3,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sunmanasiri Sarabawan",style:GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight:FontWeight.w500,

                                ),
                              ) ,
                              ),
                              Text("Sunmanasiri Sarabawan",style:GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight:FontWeight.w200,
                                  height: 0.8,
                                ),
                              ) ,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.2,),
                    Image(image: AssetImage("images/containImg.png")
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 6,
                        top: 4,
                      ),
                      child: Text("Flaky flatbreads are served alongside curries or stuffed with flavorful fillings.",
                        style:GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight:FontWeight.w300
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        top: 2,
                        bottom: 6,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(width: 5,),
                          Icon(Icons.share_rounded),
                          SizedBox(width: 5,),
                          Icon(Icons.chat_bubble_outline),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
