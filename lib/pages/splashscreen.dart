import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/config/palette.dart';
import 'package:gym_app/config/pages.dart';

import '../widgets/bg_image_widget.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const colorizeColors = [
    Palette.white,
    Palette.grey,
    Palette.secondaryColor,
    Palette.primaryColor,
  ];

  @override
  void initState() {
    super.initState();
    //wait for 3 seconds before navigating to the next page
    Future.delayed(Duration(seconds: 10)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    });
  }

  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 5),
        curve: Curves.elasticInOut,
        child: Stack(children: [
          BgImageWidget(deviceSize: deviceSize),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedTextKit(totalRepeatCount: 2, animatedTexts: [
                ColorizeAnimatedText('Welcome to\n The Gym',
                    colors: colorizeColors,
                    textStyle:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w800)),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}


