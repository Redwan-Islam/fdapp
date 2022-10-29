import 'package:fdapp/constant/mediaIcon.dart';
import 'package:fdapp/view/Auth/signinPage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class registrationPage extends StatefulWidget {
  static const String routenames = 'registrationPage';
  const registrationPage({super.key});

  @override
  State<registrationPage> createState() => _registrationPageState();
}

class _registrationPageState extends State<registrationPage> {
  bool _isobsecure = false;
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
              LottieBuilder.asset('assets/lottieFiles/auth.json'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Create Account',
                style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text(
                    'Already a member?',
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
                      Navigator.pushNamed(context, signinPage.routenames);
                    },
                    child: const Text(
                      'Log In',
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
                height: 10,
              ),
              TextField(
                obscureText: _isobsecure,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  icon: const Icon(Icons.password_rounded),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isobsecure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isobsecure = !_isobsecure;
                      });
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
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
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: mediaIcon(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
