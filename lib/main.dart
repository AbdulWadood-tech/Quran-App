import 'package:flutter/material.dart';
import 'package:quran_app/drawer/MyDrawer.dart';
import 'package:quran_app/screens/home_screen.dart';
import 'package:quran_app/screens/splash_screen.dart';
import 'package:animated_drawer/views/animated_drawer.dart';

import 'Quran/surrah_class.dart';
import 'Quran/surrah_information.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
