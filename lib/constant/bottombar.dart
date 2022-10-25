import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Gbottombar extends StatelessWidget {
  const Gbottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GNav(
      activeColor: Colors.deepPurpleAccent,
      gap: 8,
      tabs: [
        GButton(
          iconColor: Colors.deepPurpleAccent,
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          iconColor: Colors.deepPurpleAccent,
          icon: Icons.favorite,
          text: 'Favorite',
        ),
        GButton(
          iconColor: Colors.deepPurpleAccent,
          icon: Icons.shopping_cart,
          text: 'Cart',
        ),
        GButton(
          iconColor: Colors.deepPurpleAccent,
          icon: Icons.message_rounded,
          text: 'Messages',
        ),
      ],
    );
  }
}
