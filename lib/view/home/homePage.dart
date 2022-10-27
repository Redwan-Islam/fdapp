import 'package:fdapp/constant/appdrawer.dart';
import 'package:fdapp/constant/bottombar.dart';
import 'package:fdapp/helpers/bigText.dart';
import 'package:fdapp/view/home/foodPage.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  static const String routenames = 'homePage';
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer(),
      bottomNavigationBar: Gbottombar(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: bigText(text: 'FoodBuzz'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: foodPage(),
    );
  }
}
