import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'Dashboard.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          "Verify",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 37),
                      child: Text(
                        "Please enter the 5 digit one time ",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: "poppins",
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      "code to activate your account!",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "poppins",
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 70,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Didn’t receive a Code?",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        "Resend Code!",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "poppins",
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Container(
                        height: 46,
                        width: 316,
                        decoration: ShapeDecoration(
                            color: Colors.pink,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)

                            )
                        ),
                      child: Center(
                        child: TextButton(onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Screen7()));
                        },
                          child: Text("Verify",style:
                            TextStyle(fontSize: 22,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600,
                            color: Colors.white),),
                        ),
                      ),),
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
