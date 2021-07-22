import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quran_app/Quran/surrah_class.dart';
import 'package:quran_app/Quran/surrah_information.dart';
import 'package:quran_app/drawer/MyDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/check.json'),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SurahClass();
                  }));
                },
                child: Text('Surah Index'),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SurrahInformation();
                  }));
                },
                child: Text('Surah Detail'),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                '"Indeed we belong to Allah, and indeed to Him we will return"',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, color: Colors.grey, fontFamily: 'Schyler'),
              ),
              SizedBox(
                height: 5,
                width: 30,
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Text(
                  'Quran 2:156',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
