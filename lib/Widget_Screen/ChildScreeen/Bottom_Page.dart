import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_women_safety_app/Constants/Constants.dart';
import 'package:flutter_women_safety_app/Widget_Screen/ChildScreeen/Bottom_Screens/Chat_Screen.dart';
import 'package:flutter_women_safety_app/Widget_Screen/ChildScreeen/Bottom_Screens/Profile_Screen.dart';
import 'package:flutter_women_safety_app/Widget_Screen/ChildScreeen/Bottom_Screens/Review_Screen.dart';
import 'package:flutter_women_safety_app/Widget_Screen/ChildScreeen/Bottom_Screens/ChildHome_Screen.dart';
import 'package:flutter_women_safety_app/Widget_Screen/ChildScreeen/Bottom_Screens/add_Contacts.dart';

import 'Bottom_Screens/Contacts.Screen.dart';
class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {

  int currentIndex = 2;
  List<Widget> pages = [
    AddContactsPage(),
    ChatPage(),
    HomeScreen(),
    ReviewPage(),
    ProfilePage(),
  ];

  final items = <Widget>[
    Icon(Icons.contacts),
    Icon(Icons.chat),
    Icon(Icons.home),
    Icon(Icons.reviews),
    Icon(Icons.person),
  ];


  onTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        top:false,
      child: ClipRect(
        child: Scaffold(
          extendBody:true,
          body:pages[currentIndex],
          bottomNavigationBar:Theme(
            data:Theme.of(context).copyWith(
          iconTheme:const IconThemeData(color:Colors.black )
        ),

        child:CurvedNavigationBar(
          animationDuration:Duration(milliseconds:400),
            color:Colors.white70,
            backgroundColor:Colors.transparent,
            buttonBackgroundColor:primaryColor,
            index:currentIndex,
            onTap:onTapped,
            items:items,
              height:60
          ),
          )
        ),
      ),
    );
  }
}