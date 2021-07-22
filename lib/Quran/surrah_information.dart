import 'package:flutter/material.dart';
import 'package:quran/quran.dart';

class SurrahInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Surah Details',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: getTotalSurahCount(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/quran.jpg'),
              ),
              title: Text(getSurahName(index + 1)),
              trailing: Text('Revealed in ${getPlaceOfRevelation(index + 1)}'),
            );
          }),
    );
  }
}
