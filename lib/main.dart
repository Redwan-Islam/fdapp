import 'package:fdapp/view/Auth/registrationPage.dart';
import 'package:fdapp/view/Auth/signinPage.dart';
import 'package:fdapp/view/food/singleFood.dart';
import 'package:fdapp/view/home/homePage.dart';
import 'package:fdapp/view/transaction/transactionPage.dart';
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
        singleFoodPage.routenames: (context) => const singleFoodPage(),
        signinPage.routenames: (context) => const signinPage(),
        registrationPage.routenames: (context) => const registrationPage(),
        transactionPage.routenames: (context) => const transactionPage(),
      },
    );
  }
}
