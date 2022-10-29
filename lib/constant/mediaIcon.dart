import 'package:flutter/material.dart';

class mediaIcon extends StatelessWidget {
  const mediaIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/icons/facebook.png',
            height: 40.0,
            color: Colors.blueAccent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/icons/instagram.png',
            height: 40.0,
            color: Colors.redAccent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/icons/linkedin.png',
            height: 40.0,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
