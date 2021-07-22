import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class SurrahVerses extends StatelessWidget {
  final int surrahNumber;
  SurrahVerses({required this.surrahNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/quran.jpg'),
            ),
            title: Text(
              '${quran.getSurahName(surrahNumber)}',
              style: TextStyle(fontSize: 35, fontFamily: 'Schyler'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: quran.getVerseCount(surrahNumber),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      quran.getVerse(surrahNumber, index + 1,
                          verseEndSymbol: true),
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 25),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
