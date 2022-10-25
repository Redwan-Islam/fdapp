import 'package:fdapp/view/profile/profilePage.dart';
import 'package:flutter/material.dart';

class appDrawer extends StatelessWidget {
  const appDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: userProfile(),
    );
  }
}
