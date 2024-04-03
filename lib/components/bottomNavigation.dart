
import 'package:flutter/material.dart';
import 'package:recipiapp/Screens/home.dart';
import 'package:recipiapp/Screens/message.dart';
import 'package:recipiapp/Screens/profile.dart';
import 'package:recipiapp/Screens/search.dart';
import 'package:recipiapp/Screens/settings.dart';

class BottomMainNavigationBar extends StatelessWidget {
  const BottomMainNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Color(0xFF222222),
          boxShadow: [
            BoxShadow(
              color: Color(0xff00000040).withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedFontSize: 0,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: InkWell(
                  onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    return Home();
    }));
    },
                  child: Image.asset(
                    "images/Home.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              // size: 10,
              label: ("Home"),
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: InkWell(
                  onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    return Search();
    }));
    },
                  child: Image.asset(
                    "images/search.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              label: ("Search"),
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    return Message();
    }));
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    "images/chat.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              label: ("Chat"),
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Profile();
                    }));
                  },
                  child: Image.asset(
                    "images/user.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              label: ("User"),
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Settings();
                    }));
                  },
                  child: Image.asset(
                    "images/settings.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              label: ("Settings"),
            )
          ],
        ));
  }
}