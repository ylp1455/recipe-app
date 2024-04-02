import 'package:flutter/material.dart';
import 'package:recipiapp/components/bottomNavigation.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      bottomNavigationBar: SizedBox(height:70,child: BottomMainNavigationBar()),
      gradient:LinearGradient(
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
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFe8a22a),
            focusColor: Color(0xFFF4F5F9),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            hintText: 'Search....',
            hintStyle: TextStyle(
              fontFamily: "Poppins",
              color:Colors.black38,
            ),
          ),
        ),
        actions: [
          Transform.scale(
            scale: 1.5,
            child: IconButton(
              onPressed:(){
                print("search clicked");
              },
              icon:Icon(Icons.search),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
