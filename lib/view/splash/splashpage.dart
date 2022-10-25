import 'dart:async';

import 'package:fdapp/view/home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splashPage extends StatefulWidget {
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      (() {
        Navigator.popAndPushNamed(context, homePage.routenames);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LottieBuilder.asset('assets/lottieFiles/splash.json'),
          ),
        ],
      ),
    );
  }
}
