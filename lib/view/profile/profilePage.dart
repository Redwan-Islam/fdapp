import 'package:fdapp/constant/mediaIcon.dart';
import 'package:fdapp/helpers/bigText.dart';
import 'package:flutter/material.dart';

class userProfile extends StatelessWidget {
  const userProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60.0,
        ),
        const Center(
          child: CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/icons/profile.png'),
          ),
        ),
        const SizedBox(
          height: 35.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.deepPurpleAccent,
                child: const ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: Text(
                    '....',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.deepPurpleAccent,
                child: const ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: Text(
                    '....',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.deepPurpleAccent,
                child: const ListTile(
                  leading: Icon(
                    Icons.place_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: Text(
                    '....',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.deepPurpleAccent,
                  thickness: 2.0,
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: mediaIcon(),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.deepPurpleAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.logout_rounded,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 18.0,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
