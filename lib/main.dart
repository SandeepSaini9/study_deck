import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:study_deck/login_page.dart';
import 'package:study_deck/welcome_page.dart';

void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new LoginPage(),
      backgroundColor: Colors.blue,
      image: new Image(image: AssetImage('assets/images/Studydeck-logos/Studydeck-logos_white.png'),
      ),
      //loadingText: Text("Loading"),
      photoSize: 200.0,
      loaderColor: Colors.white,
    );
  }
}