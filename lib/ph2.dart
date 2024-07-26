import 'package:flutter/material.dart';
import 'package:loanapp/otp2.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Text("How you’ll log in",style: TextStyle(
                          fontSize: 30,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Make sure you keep it as secure as \npossible!",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "poppins",
                        fontSize: 16,
                        color: Colors.black
                      ),
                      ),
                    ),SizedBox(height: 100,width: 302,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: TextField(
                            decoration: InputDecoration(
                              labelText: "mobile number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                              )

                            ),
                          ),
                      ),
                    ),SizedBox(height: 100,width: 302,
                      child: Padding(
                        padding: const EdgeInsets.only(top:
                        50),
                        child: TextField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                              )
                            ),
                          ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                          height: 50,
                          width: 316,
                          decoration: ShapeDecoration(
                            color: Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(30)
                            )
                          ),
                        child: Center(
                          child: TextButton(onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Screen6()));
                          },
                            child: Text(
                              "Proceed",style: TextStyle(
                              fontSize: 22,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(top:100,left: 115),
                      child: Center(
                        child: Row(
                          children: [
                            Text("I agree to the ",style:
                                TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "poppins",
                                  fontSize: 11,
                                  color: Colors.black
                                ),
                              ),Text("Terms & Conditions and Policy.",
                              style:
                              TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "poppins",
                                  fontSize: 11,
                                  color: Colors.pink
                            )
                            )
                          ],
                        ),
                      ),
                    ),
                    ],
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
