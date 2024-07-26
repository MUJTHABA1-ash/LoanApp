import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    //mujthaba
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.notifications_none_rounded,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 25),
                  child: Center(
                    child: Text(
                      'Good afternoon,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80, left: 25),
                    child: Column(
                      children: [
                        Text(
                          'Jacquie!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 26, top: 40),
                          child: Stack(
                            children: [
                              Container(
                                height: 190,
                                width: 393,
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 30),
                                child: Text(
                                  'Loan Balance',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 296),
                                child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset("assets/pic9.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 115),
                                child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset("assets/pic10.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 299),
                                child: SizedBox(
                                    height: 90,
                                    width: 100,
                                    child: Image.asset("assets/pic8.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 340, top: 30),
                                child: Text(
                                  '50%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 70, left: 60),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\$3,000.00',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'of \$10,050.00',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0.09,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 300, top: 60),
                                child: Text(
                                  '39 days left',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 100, horizontal: 30),
                                child: LinearProgressBar(
                                  maxSteps: 6,
                                  progressType:
                                      LinearProgressBar.progressTypeLinear,
                                  // Use Linear progress
                                  currentStep: 1,
                                  progressColor: Colors.black,
                                  backgroundColor: Colors.grey,
                                  borderRadius:
                                      BorderRadius.circular(10), //  NEW
                                  //  NEW
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 150, left: 200),
                                child: Text(
                                  'Repay Loan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0.12,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 132, left: 320),
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
                                              child: Stack(children: [
                                            Column(children: [
                                              Container(
                                                height: 650,
                                                width: 500,
                                                child: DefaultTabController(
                                                  length: 2,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  bottom: 50),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'Repay Loan',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 22,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  height: 0,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 230,
                                                              ),
                                                              TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .push(MaterialPageRoute(
                                                                            builder: (_) =>
                                                                                Screen8()));
                                                                  },
                                                                  child: Icon(
                                                                    Icons.close,
                                                                    size: 30,
                                                                  ))
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 60,
                                                          child: TabBar(
                                                            indicatorSize:
                                                                TabBarIndicatorSize
                                                                    .tab,dividerColor: Colors.transparent,
                                                            indicator:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              color:
                                                                  Colors.pink,
                                                            ),
                                                            tabs: [
                                                              Tab(
                                                                icon: Text(
                                                                  'Full Repayment',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Raleway',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    height:
                                                                        0.10,
                                                                  ),
                                                                ),
                                                              ),
                                                              Tab(
                                                                icon: Text(
                                                                  'Partial Repayment',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Raleway',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    height:
                                                                        0.10,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 460,
                                                          child: TabBarView(
                                                            children: [
                                                              Stack(
                                                                children: [
                                                                  Container(
                                                                    height: 400,
                                                                    width: 500,
                                                                    color: Colors
                                                                        .white,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              30,
                                                                          left:
                                                                              20),
                                                                      child:
                                                                          Text(
                                                                        'Repay your loan today and take another one \n immediately.',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              15,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          letterSpacing:
                                                                              0.40,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            160,
                                                                        left:
                                                                            20),
                                                                    child: Text(
                                                                      'You currently owe',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            19,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        height:
                                                                            0.11,
                                                                        letterSpacing:
                                                                            0.04,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            200,
                                                                        left:
                                                                            20),
                                                                    child: Text
                                                                        .rich(
                                                                      TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                '\$ ',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 19,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600,
                                                                              height: 0.08,
                                                                              letterSpacing: 0.04,
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                '10,050.00',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 24,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600,
                                                                              height: 0.03,
                                                                              letterSpacing: 0.07,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            260,
                                                                        left:
                                                                            85),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          54,
                                                                      width:
                                                                          300,
                                                                      decoration: ShapeDecoration(
                                                                          color: Colors
                                                                              .pink,
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          'Continue',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFFFFF2F2),
                                                                            fontSize:
                                                                                19,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height:
                                                                                0.08,
                                                                            letterSpacing:
                                                                                0.05,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Stack(
                                                                children: [
                                                                  Container(
                                                                    color: Colors
                                                                        .white,
                                                                    height: 400,
                                                                    width: 500,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            80),
                                                                    child: Text(
                                                                      'Repay your loan today and take another one\n  immediately.',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            15,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        letterSpacing:
                                                                            0.40,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            130,
                                                                        left:
                                                                            50),
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          350,
                                                                      child:
                                                                          TextField(
                                                                        decoration: InputDecoration(
                                                                            labelText:
                                                                                "Enter Amount",
                                                                            border:
                                                                                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            270,
                                                                        left:
                                                                            70),
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        showModalBottomSheet<
                                                                            void>(
                                                                          // context and builder are
                                                                          // required properties in this widget
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (BuildContext context) {
                                                                            // we set up a container inside which
                                                                            // we create center column and display text

                                                                            // Returning SizedBox instead of a Container
                                                                            return Stack(
                                                                              children: [
                                                                                Container(
                                                                                  height: 600,
                                                                                  child: Center(
                                                                                    child: Column(
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: const <Widget>[
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: 50),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              Text(
                                                                                                'That was way to easy!',
                                                                                                style: TextStyle(
                                                                                                  color: Colors.black,
                                                                                                  fontSize: 19,
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  height: 0.08,
                                                                                                  letterSpacing: 0.04,
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 50,
                                                                                              ),
                                                                                              Text(
                                                                                                'Congratulations!',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: TextStyle(
                                                                                                  color: Color(0xFF1F1F1F),
                                                                                                  fontSize: 30,
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontWeight: FontWeight.w700,
                                                                                                  height: 0,
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 30,
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 90,
                                                                                                width: 90,
                                                                                                child: CircleAvatar(
                                                                                                  backgroundColor: Colors.grey,
                                                                                                  child: Icon(
                                                                                                    Icons.done,
                                                                                                    color: Colors.green,
                                                                                                    size: 50,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsets.only(top: 50),
                                                                                                child: Text(
                                                                                                  'Transaction Summary',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: TextStyle(
                                                                                                    color: Color(0xFF1F1F1F),
                                                                                                    fontSize: 20,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w700,
                                                                                                    height: 0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsets.only(top: 50),
                                                                                                child: Text(
                                                                                                  '\$ 10,050.00 ',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: TextStyle(
                                                                                                    color: Color(0xFF1F1F1F),
                                                                                                    fontSize: 29,
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontWeight: FontWeight.w700,
                                                                                                    height: 0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 30,
                                                                                              ),
                                                                                              Text(
                                                                                                'Your Loan has been fully\nPaid',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: TextStyle(
                                                                                                  color: Color(0xFF1F1F1F),
                                                                                                  fontSize: 19,
                                                                                                  fontFamily: 'Poppins',
                                                                                                  fontWeight: FontWeight.w700,
                                                                                                  height: 0,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(top: 495, left: 75),
                                                                                  child: Container(
                                                                                    height: 45,
                                                                                    width: 300,
                                                                                    decoration: ShapeDecoration(color: Colors.pink,
                                                                                        shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(40)
                                                                                        )
                                                                                    ),
                                                                                    child: Center(
                                                                                      child: Text(
                                                                                        'Okay',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: TextStyle(
                                                                                          color: Colors.white,
                                                                                          fontSize: 19.72,
                                                                                          fontFamily: 'Poppins',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          height: 0.07,
                                                                                          letterSpacing: 0.06,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            54,
                                                                        width:
                                                                            300,
                                                                        decoration: ShapeDecoration(
                                                                            color:
                                                                                Colors.pink,
                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Text(
                                                                            'Continue',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFFFFF2F2),
                                                                              fontSize: 19,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600,
                                                                              height: 0.08,
                                                                              letterSpacing: 0.05,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ]),
                                                ),
                                              )
                                            ])
                                          ]));
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_circle_right,
                                      size: 40,
                                      color: Colors.pink,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Stack(
                    children: [
                      Container(
                          width: double.infinity,
                          height: 560,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40))))),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 70),
                        child: Text(
                          'Transactions',
                          style: TextStyle(
                            color: Color(0xFF242424),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.08,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 330),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Color(0xFFFF0083),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130, left: 60),
                        child: Column(
                          children: [
                            Text(
                              'Mini-Statement',
                              style: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Text(
                                'Loan Disbursement',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 18),
                              child: Text(
                                '2022-09-12',
                                style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  height: 0.12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190, left: 330),
                        child: Text(
                          '\$10,050.00',
                          style: TextStyle(
                            color: Color(0xFF53D258),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 260, left: 60),
                        child: Column(
                          children: [
                            Text(
                              'Withdraw to Bank',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                '2022-09-12',
                                style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 270, left: 325),
                        child: Text(
                          '-\$10,050.00',
                          style: TextStyle(
                            color: Color(0xFFE25C5C),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 340, left: 65),
                        child: Column(
                          children: [
                            Text(
                              'Loan Repayment',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 1),
                              child: Text(
                                '2022-09-12',
                                style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  height: 0.12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 338, top: 350),
                        child: Text(
                          '\$3,000.00',
                          style: TextStyle(
                            color: Color(0xFF53D258),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 415),
                        child: Column(
                          children: [
                            Text(
                              'Loan Repayment Fees',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 41),
                              child: Text(
                                '2022-09-12',
                                style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  height: 0.12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 420, left: 345),
                        child: Text(
                          '-\$32.00',
                          style: TextStyle(
                            color: Color(0xFFE25C5C),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                          ),
                        ),
                      )
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
