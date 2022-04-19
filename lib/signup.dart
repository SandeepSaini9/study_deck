import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List images = [
      "google.png",
      "fb.png",
      "tweet.png"
    ];
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
              child:const Image(image: AssetImage('assets/images/Studydeck-logos/Studydeck-logos_transparent.png'),fit: BoxFit.fitHeight, ),

            ),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   "Hello",
                  //   style: TextStyle(
                  //     fontSize: 70,
                  //     fontWeight: FontWeight.bold
                  //   ),
                  // ),

                  SizedBox(height: 50,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.5)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                          prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.5)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password_outlined, color: Colors.deepOrangeAccent,),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  // Row(
                  //   children: [
                  //     Expanded(child: Container(),),
                  //     Text(
                  //       "Forgot your Password?",
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         color:Colors.white,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(height: 20,),


                ],
              ),
            ),
            Container(
                width: 200.0,
                height: 50.0,
                color: Colors.white70,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(9.0),
                child: Text(
                  "      Sign Up", style: TextStyle(fontSize: 25),
                )

            ),
            SizedBox(height: 10,),
            RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Have An Account?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500]
              )
            )
            ),
            SizedBox(height: w*0.2),
            RichText(text: TextSpan(
                text: "Sign up using one of the following methods",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),

            )),
            Wrap(
              children: List<Widget>.generate(
                3,
                  (index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[500],

                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "images/Studydeck-logos/"+ images[index]
                        ),
                      ),
                    ),
                  );
                  }
              )
            )
          ],
        ),
      ),
    );
  }
}
