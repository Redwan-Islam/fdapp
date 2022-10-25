import 'package:fdapp/view/home/homePage.dart';
import 'package:flutter/material.dart';

import 'view/splash/splashpage.dart';

void main(List<String> args) {
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splashPage(),
      routes: {
        homePage.routenames: (context) => const homePage(),
      },
    );
  }
}
