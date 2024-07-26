import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:loanapp/Transaction.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 55, left: 20),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      'Welcome',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 50),
                  child: SizedBox(
                      height: 70,
                      width: 50,
                      child: Image.asset("assets/pic7.png")),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 170),
                  child: Column(
                    children: [
                      Text(
                        "Good afternoon,",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins",
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        "Jacquie!",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55, left: 395),
                  child: Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 210),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Container(
                            height: 200,
                            width: 410,
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 28, top: 20),
                              child: Text(
                                "Loan Limit",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "poppins",
                                    fontSize: 17,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 346, top: 20),
                          child: SizedBox(
                              height: 90,
                              width: 85,
                              child: Image.asset(
                                "assets/pic9.png",
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 360, right: 10, top: 20),
                          child: SizedBox(
                              height: 90,
                              width: 70,
                              child: Image.asset("assets/pic8.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 92, left: 73),
                          child: Icon(
                            Icons.attach_money,
                            color: Colors.black,
                            size: 22,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 88, left: 90),
                          child: Text(
                            "10,000.00",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 103, left: 250),
                          child: Text(
                            'Request for \$5,500.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 90, vertical: 135),
                          child: LinearProgressBar(
                            maxSteps: 6,
                            progressType: LinearProgressBar.progressTypeLinear,
                            // Use Linear progress
                            currentStep: 1,
                            progressColor: Colors.red,
                            backgroundColor: Colors.grey,
                            borderRadius: BorderRadius.circular(10), //  NEW
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 139),
                          child: SizedBox(
                              height: 150,
                              width: 70,
                              child: Image.asset(
                                "assets/pic10.png",
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 190, left: 190),
                          child: Text(
                            'Request for Loan',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 165, left: 370),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet<void>(
                                // context and builder are
                                // required properties in this widget
                                context: context,
                                builder: (BuildContext context) {
                                  // we set up a container inside which
                                  // we create center column and display text

                                  // Returning SizedBox instead of a Container
                                  return SingleChildScrollView(
                                    child: Container(
                                      height: 700,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 100),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'How long do you want the loan for?',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 19,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0.08,
                                                      letterSpacing: 0.04,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                    "2 Months",
                                                    style: TextStyle(
                                                      color: Color(0xFF1F1F1F),
                                                      fontSize: 24,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 50,
                                                            vertical: 50),
                                                    child: LinearProgressBar(
                                                      maxSteps: 6,
                                                      progressType:
                                                          LinearProgressBar
                                                              .progressTypeLinear,
                                                      // Use Linear progress
                                                      currentStep: 1,
                                                      progressColor: Colors.red,
                                                      backgroundColor:
                                                          Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10), //  NEW
                                                      //  NEW
                                                    ),
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 30),
                                                        child: Container(
                                                            height: 132,
                                                            width: 390,
                                                            decoration: ShapeDecoration(
                                                                color: Colors
                                                                    .black,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30)))),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 40,
                                                                top: 30),
                                                        child: Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 25),
                                                              child: Text(
                                                                "Monthly   \nPayment",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 13,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 75,
                                                            ),
                                                            Text(
                                                              'No of\nPayments',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 75,
                                                            ),
                                                            Text(
                                                              "Total\n Payback",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 80,
                                                                top: 75),
                                                        child: Text(
                                                          "NIL",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFFC4C4C4),
                                                            fontSize: 20,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 75,
                                                                left: 210),
                                                        child: Text(
                                                          "NIL",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFFC4C4C4),
                                                            fontSize: 20,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 75,
                                                                left: 350),
                                                        child: Text(
                                                          "NIL",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFFC4C4C4),
                                                            fontSize: 20,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 200,
                                                                left: 100),
                                                        child: Text(
                                                          'I agree to the ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0.16,
                                                            letterSpacing: 0.03,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 200,
                                                                left: 187),
                                                        child: Text(
                                                          'Terms & Conditions ',
                                                          style: TextStyle(
                                                            color: Colors.pink,
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0.16,
                                                            letterSpacing: 0.03,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 200,
                                                                left: 315),
                                                        child: Text(
                                                          "and",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0.16,
                                                            letterSpacing: 0.03,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 200,
                                                                left: 342),
                                                        child: Text(
                                                          "Policy.",
                                                          style: TextStyle(
                                                            color: Colors.pink,
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0.16,
                                                            letterSpacing: 0.03,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 250,
                                                                  left: 55),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              showModalBottomSheet<
                                                                      void>(
                                                                  // context and builder are
                                                                  // required properties in this widget
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    // we set up a container inside which
                                                                    // we create center column and display text

                                                                    // Returning SizedBox instead of a Container
                                                                    return SingleChildScrollView(
                                                                      child: Stack(
                                                                        children: [
                                                                          Container(
                                                                              height: 999,
                                                                              child: Center(
                                                                                child:
                                                                                    Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: const <Widget>[
                                                                                    Text(
                                                                                      'That was way to easy!',
                                                                                      style: TextStyle(color: Colors.black,
                                                                                          fontSize: 29,
                                                                                          fontFamily: 'Poppins',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          height: 0.08,
                                                                                          letterSpacing: 0.05),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 30,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(bottom: 30),
                                                                                      child: Text(
                                                                                        'Congratulations!',
                                                                                        style: TextStyle(
                                                                                          color: Color(0xFF1F1F1F),
                                                                                          fontSize: 35,
                                                                                          fontFamily: 'Poppins',
                                                                                          fontWeight: FontWeight.w700,
                                                                                          height: 0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(bottom: 400),
                                                                                      child: Column(
                                                                                        children: [
                                                                                          CircleAvatar(
                                                                                            backgroundColor: Colors.grey,
                                                                                            radius: 30,
                                                                                            child: Icon(
                                                                                              Icons.done,
                                                                                              color: Color(0xFF6CD12E),
                                                                                              size: 40,
                                                                                            ),
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 30,
                                                                                          ),
                                                                                          Text(
                                                                                            "Transaction Summary",
                                                                                            style: TextStyle(
                                                                                              color: Colors.black,
                                                                                              fontSize: 25,
                                                                                              fontFamily: 'Poppins',
                                                                                              fontWeight: FontWeight.w700,
                                                                                              height: 0,
                                                                                            ),
                                                                                          ),SizedBox(
                                                                                            height: 50,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsets.only(left: 83),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text(
                                                                                                  "Next Repayment Date:",
                                                                                                  style: TextStyle(
                                                                                                    color: Color(0xFF7F8790),
                                                                                                    fontSize: 15,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w300,
                                                                                                    height: 0.12,
                                                                                                  ),
                                                                                                ),SizedBox(
                                                                                                  width: 50,
                                                                                                ),Text( '02/04/2023',
                                                                                                style: TextStyle(
                                                                                                  color: Color(0xFF080808),
                                                                                                  fontSize: 15,
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontWeight: FontWeight.w300,
                                                                                                  height: 0.12,
                                                                                                ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),Padding(
                                                                                            padding: EdgeInsets.only(top: 30,left: 83),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text("Interest Rate:",
                                                                                                style: TextStyle(
                                                                                                  color: Color(0xFF7F8790),
                                                                                                  fontSize: 15,
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontWeight: FontWeight.w300,
                                                                                                  height: 0.12,
                                                                                                ),
                                                                                                ),SizedBox(
                                                                                                  width: 150,
                                                                                                ),Column(
                                                                                                  children: [
                                                                                                    Text('10 %',
                                                                                                    style: TextStyle(
                                                                                                      color: Colors.black,
                                                                                                      fontSize: 15,
                                                                                                      fontFamily: 'Poppins',
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      height: 0.12,
                                                                                                    ),
                                                                                                    ),
                                                                                                  ],
                                                                                                )
                                                                                              ],
                                                                                            ),
                                                                                          ),Padding(
                                                                                            padding: EdgeInsets.only(top: 30,left: 83),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text("Monthly Repayment:",
                                                                                                style: TextStyle(
                                                                                                  color: Color(0xFF7F8790),
                                                                                                  fontSize: 15,
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontWeight: FontWeight.w300,
                                                                                                  height: 0.12,

                                                                                                ),
                                                                                                ),SizedBox(
                                                                                                  width: 75,
                                                                                                ), Text(
                                                                                            '\$5,000.00',style:
                                                                                                  TextStyle(
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 15,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w300,
                                                                                                    height: 0.12,

                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ), Padding(
                                                                                            padding: EdgeInsets.only(top: 30,left: 83),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text(
                                                                                                    'No of Payments:',
                                                                                                    style: TextStyle(
                                                                                                      color: Color(0xFF7F8790),
                                                                                                      fontSize: 15,
                                                                                                      fontFamily: 'Poppins',
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      height: 0.12,)
                                                                                                ),SizedBox(
                                                                                                  width: 135,
                                                                                                ), Text(
                                                                                                  '2',
                                                                                                  textAlign: TextAlign.right,
                                                                                                  style: TextStyle(
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 15,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w300,
                                                                                                    height: 0.12,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ), Padding(
                                                                                            padding: EdgeInsets.only(top: 30,
                                                                                            left: 83),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text(
                                                                                                  'Reason:',
                                                                                                  style: TextStyle(
                                                                                                    color: Color(0xFF7F8790),
                                                                                                    fontSize: 15,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w300,
                                                                                                    height: 0.12,
                                                                                                  ),
                                                                                                ),SizedBox(
                                                                                                  width: 140,
                                                                                                ),Text(
                                                                                                  'Emergency Bills',
                                                                                                  textAlign: TextAlign.right,
                                                                                                  style: TextStyle(
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 15,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w300,
                                                                                                    height: 0.12,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ), Padding(
                                                                                            padding: EdgeInsets.only(top: 30,left: 83),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text(
                                                                                                  'Total Payback Amount:',
                                                                                                  style: TextStyle(
                                                                                                    color: Color(0xFF7F8790),
                                                                                                    fontSize: 15,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w300,
                                                                                                    height: 0.12,
                                                                                                  ),
                                                                                                ),SizedBox(
                                                                                                  width: 55,
                                                                                                ),Text(
                                                                                                  '\$ 10,050.00',
                                                                                                  textAlign: TextAlign.right,
                                                                                                  style: TextStyle(
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 15,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w300,
                                                                                                    height: 0.12,
                                                                                                  ),
                                                                                                ),

                                                                                              ],
                                                                                            ),
                                                                                          ),

                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              )
                                                                          ),Padding(
                                                                            padding: const EdgeInsets.only(top: 630,left: 63),
                                                                            child: Container(
                                                                              width: 340,
                                                                              height: 50,
                                                                              decoration: ShapeDecoration(
                                                                                color: Colors.pink,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(30)
                                                                                )
                                                                              ),
                                                                            child:
                                                                            Center(
                                                                              child: TextButton(onPressed: () {
                                                                                Navigator.of(context).push(
                                                                                    MaterialPageRoute(builder: (_) => Screen8()));
                                                                              },
                                                                                child: Text(
                                                                                  'Accept',
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFFFFF2F2),
                                                                                    fontSize: 22,
                                                                                    fontFamily: 'Poppins',
                                                                                    fontWeight: FontWeight.w600,
                                                                                    height: 0.07,
                                                                                    letterSpacing: 0.06,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            ),
                                                                          ),Padding(
                                                                            padding: const EdgeInsets.only(top: 720,left: 63),
                                                                            child: Container(
                                                                              width: 340,
                                                                              height: 50,
                                                                              decoration: ShapeDecoration(
                                                                            color: Colors.black,
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(30)
                                                                            )
                                                                              ),child: Center(
                                                                                child: Text(
                                                                                'Decline',
                                                                                style: TextStyle(
                                                                                  color: Color(0xFFFFF2F2),
                                                                                  fontSize: 22,
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                  height: 0.07,
                                                                                  letterSpacing: 0.06,
                                                                                ),
                                                                                                                                                            ),
                                                                              ),
                                                                    )
                                                                          ),
                                                                      ],
                                                                      ),
                                                                    );
                                                                  });
                                                            },
                                                            child: Container(
                                                              width: 336,
                                                              height: 45.28,
                                                              decoration:
                                                                  ShapeDecoration(
                                                                color:
                                                                    Colors.pink,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                ),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  "Apply Now",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFFFFF2F2),
                                                                    fontSize:
                                                                        22,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    height:
                                                                        0.07,
                                                                    letterSpacing:
                                                                        0.06,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ))
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Icon(
                              Icons.arrow_circle_right,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 500),
                    child: Stack(
                      children: [
                        Container(
                          height: 500,
                          width: 600,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50)))),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Text(
                              'How do you want to use your limit?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0.08,
                                letterSpacing: 0.04,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: Stack(
                              children: [
                                Container(
                                  height: 69,
                                  width: 395,
                                  decoration: ShapeDecoration(
                                      color: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Image.asset("assets/pic11.png")),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 33, left: 90),
                                  child: Text(
                                    'Emergency Bills',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: 0.04,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 13, left: 330),
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 190, left: 29),
                              child: Container(
                                height: 69,
                                width: 395,
                                decoration: ShapeDecoration(
                                    color: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 207, left: 28),
                              child: SizedBox(
                                  height: 42,
                                  width: 100,
                                  child: Image.asset("assets/pic11.png")),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 225, left: 118),
                              child: Text(
                                'Food and Shopping',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.08,
                                  letterSpacing: 0.04,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 207, left: 359),
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 295, left: 30),
                          child: Stack(
                            children: [
                              Container(
                                height: 69,
                                width: 395,
                                decoration: ShapeDecoration(
                                    color: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: SizedBox(
                                    height: 44,
                                    width: 100,
                                    child: Image.asset("assets/pic11.png")),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 330, left: 118),
                          child: Text(
                            'Others',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                              letterSpacing: 0.04,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 309, left: 360),
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 40,
                          ),
                        ),
                      ],
                    )),
                Stack(
                  children: [
                    Container(
                      height: 25,
                      width: 500,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
