import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/screens/home_screen.dart';

import 'drawer/MyDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedDrawer(
      homePageXValue: 150,
      homePageYValue: 80,
      homePageAngle: -0.2,
      homePageSpeed: 250,
      shadowXValue: 122,
      shadowYValue: 110,
      shadowAngle: -0.275,
      shadowSpeed: 450,
      openIcon: Icon(Icons.menu_open, color: Color(0xFF1f186f)),
      closeIcon: Icon(Icons.arrow_back_ios, color: Color(0xFF1f186f)),
      shadowColor: Colors.white24,
      backgroundGradient: LinearGradient(
        colors: [Colors.black, Colors.black],
      ),
      menuPageContent: MyDrawer(),
      homePageContent: HomeScreen(),
    );
  }
}
