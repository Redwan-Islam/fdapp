import 'package:flutter/material.dart';

class iconWidget extends StatelessWidget {
  const iconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.star,
          color: Colors.deepPurpleAccent,
        ),
        Icon(
          Icons.star,
          color: Colors.deepPurpleAccent,
        ),
        Icon(
          Icons.star,
          color: Colors.deepPurpleAccent,
        ),
        Icon(Icons.star),
        Icon(Icons.star),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.pedal_bike,
          size: 30,
          color: Colors.deepPurpleAccent,
        ),
        SizedBox(width: 5),
        Text(
          'Takeaway',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.alarm,
          size: 30,
          color: Colors.deepPurpleAccent,
        ),
        SizedBox(width: 5),
        Text(
          '32 Min',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
