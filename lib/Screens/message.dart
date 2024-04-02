import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipiapp/components/bottomNavigation.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
      appBar: AppBar(
        toolbarHeight: 86,
        backgroundColor: Color(0xFFD77E15),
         title: Text(
        "Messages",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24,
          fontFamily: 'Poppins',
          color: Color(0xFFFFFFFF),
        ),
      ),
        actions: [
          TextButton(onPressed:(){}, child:Text("Requests",style:
            TextStyle(
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: Color(0xFF222222),
            )
            ,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Expanded(
            child: Column(
              children: [
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: (){},
                                child: Image.asset("images/msgUser.png")),
                            SizedBox(width: 10,),
                            Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ganidu",style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black
                                ),),
                                Text("Seen on Tuesday",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  color: Color(0xFF000000),
                                ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),

                        //SizedBox(width:100 ,),
                        InkWell(
                            onTap:(){},
                            child: ImageIcon(
                              AssetImage("images/camera.png"),),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: (){},
                                child: Image.asset("images/msgUser.png")),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ganidu",style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                                Text("Seen on Tuesday",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  color: Color(0xFF000000),
                                ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),

                        //SizedBox(width:100 ,),
                        InkWell(
                          onTap:(){},
                          child: ImageIcon(
                            AssetImage("images/camera.png"),),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: (){},
                                child: Image.asset("images/msgUser.png")),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ganidu",style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                                Text("Seen on Tuesday",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  color: Color(0xFF000000),
                                ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),

                        //SizedBox(width:100 ,),
                        InkWell(
                          onTap:(){},
                          child: ImageIcon(
                            AssetImage("images/camera.png"),),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: (){},
                                child: Image.asset("images/msgUser.png")),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ganidu",style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                                Text("Seen on Tuesday",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  color: Color(0xFF000000),
                                ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),

                        //SizedBox(width:100 ,),
                        InkWell(
                          onTap:(){},
                          child: ImageIcon(
                            AssetImage("images/camera.png"),),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: (){},
                                child: Image.asset("images/msgUser.png")),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ganidu",style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                                Text("Seen on Tuesday",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  color: Color(0xFF000000),
                                ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),

                        //SizedBox(width:100 ,),
                        InkWell(
                          onTap:(){},
                          child: ImageIcon(
                            AssetImage("images/camera.png"),),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: (){},
                                child: Image.asset("images/msgUser.png")),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ganidu",style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                                Text("Seen on Tuesday",style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  color: Color(0xFF000000),
                                ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),

                        //SizedBox(width:100 ,),
                        InkWell(
                          onTap:(){},
                          child: ImageIcon(
                            AssetImage("images/camera.png"),),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
