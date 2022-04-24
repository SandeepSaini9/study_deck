import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:study_deck/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue,
        body: Container(
          height: h,
            width: w,
          child: Column(
            children: [
              Container(
                width: w,
                height: h*0.3,
                child:const Image(image: AssetImage('assets/images/Studydeck-logos/Studydeck-logos_white.png'),fit: BoxFit.fitHeight, ),

              ),
              Container(
                margin: const EdgeInsets.only(left: 25,right: 25),
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
                    Text(
                      "Sign In To Your Account",
                      style: TextStyle(
                          fontSize: 20,
                          color:Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 35,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                          )
                        ]
                      ),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "Phone Number",
                            prefixIcon: Icon(MdiIcons.phone, color: Colors.deepOrangeAccent,),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.5
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.5
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
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1,1),
                                color: Colors.grey.withOpacity(0.2)
                            )
                          ]
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password, color: Colors.deepOrangeAccent,),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(child: Container(),),
                        Text(
                          "Forgot your Password?",
                          style: TextStyle(
                              fontSize: 18,
                              color:Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),


                  ],
                ),
              ),
               Container(
                 width: 200,
                 height: 50,
                 child: TextButton(onPressed: (){}, child: Text('Login ', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),), style: ButtonStyle(
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(100.0),
                             side: BorderSide(color: Colors.white)
                         )
                     )
                 ), ),
               ),
              SizedBox(height: w*0.2),
              RichText(text: TextSpan(
                text: "Don\'t have an account?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                children: [
                  TextSpan(
                  text: " Create",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
                  )
                  ]
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
