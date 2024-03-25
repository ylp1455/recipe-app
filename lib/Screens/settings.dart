import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        backgroundColor:Color(0xFFD77E15),
        title: Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            fontFamily: 'Poppins',
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Container(
                  height: 78,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        "Account settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 78,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        "Notification settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Container(
                  height: 78,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        "Privacy settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 78,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        "Language  settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 78,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        "Theme settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          color: Color(0xFF000000),
                        ),
                      ),
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
