import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:loanapp/Login.dart';
import 'package:loanapp/ph-page.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => Screen3()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,
        allowImplicitScrolling: true,
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        globalHeader: Align(
          alignment: Alignment.topRight,
        ),

        pages: [
          PageViewModel(
              title: "Send Money",
              body:
              " Send money to all networks and banks right from your Pay Fast account.",
              image: Image.asset("assets/pic3.png")

          ),
          PageViewModel(
              title: "Pay Bills",
              body:
              "Pay Bills such as Electricity, Water bill, TV subscriptions etc.Buy airtime & Bundles",
              image: Image.asset("assets/pic4.png")
          ),
          PageViewModel(
            title: "Pay Merchants",
            body:
            "Even with insufficient balance, Pay by Phone at Merchants with Pay Fast Accounts.",
            image: Image.asset("assets/pic5.png"),

          ),


        ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0)
    ,


    );
  }
  }

