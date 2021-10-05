import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizzado/views/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Timer is used to determine how much amount of time we shall spend on the Splash Screen and then Transition into the Home Screen
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        PageTransition(
            child: HomeScreen(), type: PageTransitionType.leftToRightWithFade),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 200,
            width: 400,
            child: Lottie.asset('assets/animations/slice.json'),
          ),
          RichText(
            text: TextSpan(
              text: "Piz",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 56.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "z",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 56.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                TextSpan(
                  text: "ado",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 56.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
