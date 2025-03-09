import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  bool showButton = false;
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1600), () {
      setState(() {
        showButton = true;
      });
    });
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: GoogleFonts.aclonica(
              textStyle: TextStyle(
                  letterSpacing: .5, fontSize: 34, color: Colors.black),
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Ramdan mobark',
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ),
          DefaultTextStyle(
            style: GoogleFonts.aclonica(
              textStyle: TextStyle(
                  letterSpacing: .5, fontSize: 34, color: Colors.black),
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(' رمضان مبارك',
                    speed: const Duration(milliseconds: 100)),
              ],
              totalRepeatCount: 1,
            ),
          ),
          AnimatedOpacity(
            opacity: showButton ? 1.0 : 0.0,
            duration: Duration(milliseconds: 300),
            child: showButton
                ? ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'homescreen');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    child: Text(
                      'enter',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : SizedBox(),
          )
        ],
      )),
    );
  }
}
