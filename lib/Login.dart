import 'package:flutter/material.dart';
import 'package:loanapp/ph-page.dart';

import 'slider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(child:  Column(
        children: [
          Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text("Pay Fast",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "poppins",
                        fontSize: 28,
                        color: Colors.black

                      ),),
                    ),SizedBox(height: 10,),
                  Text("Forget Everything",style: TextStyle(
                    fontSize: 28,
                    fontFamily:"poppins",
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                  ),
                    Text("You Know About",style: TextStyle(
                        fontSize: 28,
                        fontFamily:"poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                    ),
                    Text("Banking",style: TextStyle(
                        fontSize: 28,
                        fontFamily:"poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                    ),
                  Image.asset("assets/pic1.png")],
                ),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 700),
                child: Container(
                  height: 46,
                  width: 250,
                  decoration: ShapeDecoration(
                  color: Colors.pink,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                    )
                ),
                child: Center(
                  child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen3()));},
                    child: Text("Log in",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppins",
                      fontSize: 25,
                      color: Colors.black
                    ),),
                  ),
                ),),
              ),
            ),
           Center(
             child: Padding(
               padding: const EdgeInsets.only(top: 775),
               child: Container(
                 height: 46,
                 width: 250,
                 decoration: ShapeDecoration(
                     color: Colors.pink,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                     )
                 ),

               child: Center(
                 child: Text("Sign up",style: TextStyle(
                     fontWeight: FontWeight.w600,
                     fontFamily: "poppins",
                     fontSize: 25,
                     color: Colors.black
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

    )
    );
  }
}
