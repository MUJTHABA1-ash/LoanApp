import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:loanapp/ph2.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: Text(
                          "Verify",
                          style: TextStyle(
                              fontSize: 33,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),SizedBox(height: 30,),
                    Text(
                      "Please enter the 5 digit one time ",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontFamily: "poppins",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text(
                        "code to activate your account!",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: "poppins",
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    OtpTextField(
                      numberOfFields: 5,
                      borderColor: Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      }, // end onSubmit
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Didn’t receive a Code?",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Resend Code!",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "poppins",
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      height: 46,
                      width: 316,
                      decoration: ShapeDecoration(
                          color: Colors.pink,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: Center(
                        child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder:(_)=>Screen5()));},
                          child: Text(
                            "Verify",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
