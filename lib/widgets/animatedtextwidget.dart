import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/config/palette.dart';


class Headers extends StatelessWidget {
  final String title;

  const Headers({this.title});

  static const colorizeColors = [
    Palette.black,
    Palette.grey,
    Palette.secondaryColor,
    Palette.primaryColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedTextKit(
          totalRepeatCount: 2,
          animatedTexts: [
            ColorizeAnimatedText(
              title,
              colors: colorizeColors,
              textStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        // SizedBox(
        //   height: 20,
        // ),
        // AnimatedTextKit(
        //   totalRepeatCount: 1,
        //   displayFullTextOnTap: true,
        //   animatedTexts: [
        //     TyperAnimatedText(
        //       'At vero eos et accusamus et iusto odio \ndignissimos ducimus',
        //       textStyle: TextStyle(
        //           color: Colors.grey,
        //           fontSize: 18,
        //           fontWeight: FontWeight.w500),
        //     )
        //   ],
        // ),
      ],
    );
  }
}
