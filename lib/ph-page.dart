import 'package:flutter/material.dart';

import 'Otp.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView (
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: 450,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset("assets/pic6.png"),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 450),
                  child: Center(
                    child: Text(
                      "Add your mobile number",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "poppins",
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 500),
                    child: Text(
                      "We’ll need to confirm it by sending a text.",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(top: 550,left: 65),
                  child: SizedBox(height: 100,width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Mobile Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 650),
                    child: Container(
                      height: 46,
                      width: 316,
                      decoration: ShapeDecoration(
                          color: Colors.pink,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Screen4()));
                          },
                          child: Text(
                            "Proceed",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins",
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
