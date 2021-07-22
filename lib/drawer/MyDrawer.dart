import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quran_app/Quran/surrah_class.dart';
import 'package:quran_app/Quran/surrah_information.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0, left: 15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/quran.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "QURAN",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "SHAREEF",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue[200],
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SurahClass();
                }));
              },
              leading: Icon(
                Icons.list,
                color: Colors.white,
              ),
              title: Text(
                'Surah index',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SurrahInformation();
                }));
              },
              leading: Icon(
                Icons.list,
                color: Colors.white,
              ),
              title: Text(
                'Surah Detail',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Text(
              "About",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'It is not the final version of our app, \nwe are still working on it',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Schyler',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
