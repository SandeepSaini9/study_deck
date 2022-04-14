import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_deck/home/main_page.dart';
import 'package:study_deck/login_page.dart';
import 'package:study_deck/signup.dart';
import 'package:study_deck/welcome_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     debugShowCheckedModeBanner: false,
     home: LoginPage(),
   );
  }
}