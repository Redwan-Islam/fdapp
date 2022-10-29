import 'package:fdapp/constant/mediaIcon.dart';
import 'package:fdapp/view/home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class transactionPage extends StatefulWidget {
  static const String routenames = 'transactionPage';
  const transactionPage({super.key});

  @override
  State<transactionPage> createState() => _transactionPageState();
}

class _transactionPageState extends State<transactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LottieBuilder.asset('assets/lottieFiles/transaction.json'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Please Provide Valid Information',
                style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text(
                    'Still have doubts?',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, homePage.routenames);
                    },
                    child: const Text(
                      'Home Page',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Rubik',
                          fontSize: 15.0,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  icon: Icon(Icons.person),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  icon: Icon(Icons.email),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Your Address',
                  icon: Icon(Icons.location_on),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                elevation: 5.0,
                color: Colors.deepPurpleAccent,
                child: MaterialButton(
                  minWidth: 200.0,
                  height: 42.0,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Confirm Order',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
