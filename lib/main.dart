import 'package:flutter/material.dart';
import 'package:study_deck/home/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MainPage(),
   );
  }
}