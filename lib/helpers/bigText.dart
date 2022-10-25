import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bigText extends StatelessWidget {
  final String text;
  double size;
  TextOverflow overflow;

  bigText(
      {super.key,
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 22.0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: const TextStyle(fontFamily: 'Rubik', fontWeight: FontWeight.w400),
    );
  }
}
