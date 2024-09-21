// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.topLeft,
          child: AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText('AWESOME',duration: Duration(milliseconds: 1000)),
            RotateAnimatedText('OPTIMISTIC',duration: Duration(milliseconds: 1000)),
            RotateAnimatedText('DIFFERENT',duration: Duration(milliseconds: 1000)),
            WavyAnimatedText('Hello World'),
          ],
          totalRepeatCount: 1,
          ),
        ),
          backgroundColor: Colors.green,
        ),
      body: Center(
        // child: AnimatedTextKit(
        //   animatedTexts: [
        //     WavyAnimatedText(
        //       'Aryan Singh',
        //       textStyle: TextStyle(fontSize: 18.0,),
        //       // speed: Duration(seconds: 200)
        //       ),
        //       TypewriterAnimatedText(
        //         'Tyson',
        //         speed: Duration(milliseconds: 400),
        //         curve: Curves.bounceIn
        //       )
        //       ],
        //       pause: Duration(seconds: 2),
        //       isRepeatingAnimation: true,
        // ),
        child: TextLiquidFill(
          // loadUntil: 2,
          text: 'Aryan Singh',
          waveDuration: Duration(seconds: 2),
          textAlign: TextAlign.left,
          textStyle: TextStyle(
            color: Colors.red,
            fontSize: 50.0,
          ),
          boxBackgroundColor: Colors.blueGrey,
          waveColor: Colors.blueAccent,
          boxHeight: 200,
          ),
      ),
    );
  }
}