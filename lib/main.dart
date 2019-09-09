import 'package:flutter/material.dart';
import 'package:newapp/screens/noteDetail.dart';
import 'package:newapp/screens/noteList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DatabaseApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      home: NoteList(),
    );
  }

}