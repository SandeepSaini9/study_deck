import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        height: h,
        width: w,
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              // decoration: BoxDecoration(
              //   image:  DecorationImage(
              //     image: AssetImage(
              //       "assets/images/Studydeck-logos/Studydeck-logos_white.png"
              //     ),fit: BoxFit.fitWidth,
              //   ),
              // ),
              child:const Image(image: AssetImage('assets/images/Studydeck-logos/study.jpg'),fit: BoxFit.fitHeight, ),

            ),
            SizedBox(height: 70,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    "a@a.com",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 200,),
            Container(
                width: 200.0,
                height: 50.0,
                color: Colors.white70,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(9.0),
                child: Text(
                  "      Sign Out", style: TextStyle(fontSize: 25),
                )
            ),


          ],
        ),
      ),
    );
  }
}
