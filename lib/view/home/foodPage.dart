import 'package:flutter/material.dart';

class foodPage extends StatefulWidget {
  const foodPage({super.key});

  @override
  State<foodPage> createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
            child: Container(
              height: 320,
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'popular Food',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik'),
                      )
                    ],
                  ),
                ),
                popularFood(),
                popularFood2(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPageItem(int position) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade300,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/udon.jpg'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: bottomStyle(),
            ),
          ),
        ),
      ],
    );
  }
}

class popularFood extends StatelessWidget {
  const popularFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.deepPurpleAccent),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/udon.jpg',
              height: 180,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.pedal_bike,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(width: 5),
                    Text('Takeaway'),
                    SizedBox(width: 5),
                    Icon(
                      Icons.location_on,
                      color: Colors.deepPurpleAccent,
                    ),
                    Text('1.2KM'),
                    SizedBox(width: 5),
                    Icon(
                      Icons.alarm,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(width: 5),
                    Text('32 Min'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'View Details',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          )
                        ],
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class popularFood2 extends StatelessWidget {
  const popularFood2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.deepPurpleAccent),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/pizza.jpg',
              height: 180,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.pedal_bike,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(width: 5),
                    Text('Takeaway'),
                    SizedBox(width: 5),
                    Icon(
                      Icons.location_on,
                      color: Colors.deepPurpleAccent,
                    ),
                    Text('1.2KM'),
                    SizedBox(width: 5),
                    Icon(
                      Icons.alarm,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(width: 5),
                    Text('32 Min'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'View Details',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          )
                        ],
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class bottomStyle extends StatelessWidget {
  const bottomStyle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Famous japanese Udon',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: Colors.deepOrangeAccent,
                  size: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('4.5'),
            const SizedBox(
              width: 10,
            ),
            const Text('1287 Comments')
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [
            Icon(
              Icons.pedal_bike,
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(width: 5),
            Text('Takeaway'),
            SizedBox(width: 5),
            Icon(
              Icons.location_on,
              color: Colors.deepPurpleAccent,
            ),
            Text('1.2KM'),
            SizedBox(width: 5),
            Icon(
              Icons.alarm,
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(width: 5),
            Text('32 Min'),
          ],
        ),
      ],
    );
  }
}
