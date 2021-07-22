import 'package:flutter/material.dart';
import 'package:quran_app/data/surrah_verses.dart';

class SurahClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/quran.jpg'),
              ),
              title: Text(
                'Surah Index',
                style: TextStyle(fontSize: 35, fontFamily: 'Schyler'),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SurrahVerses(surrahNumber: index + 1);
                        },
                      ));
                    },
                    child: Text('${index + 1}'),
                  );
                },
                itemCount: 114,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
