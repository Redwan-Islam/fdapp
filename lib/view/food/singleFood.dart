import 'package:fdapp/constant/appdrawer.dart';
import 'package:fdapp/constant/bottombar.dart';
import 'package:fdapp/constant/iconWidget.dart';
import 'package:fdapp/view/Auth/signinPage.dart';
import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';

class singleFoodPage extends StatefulWidget {
  static const String routenames = 'singleFoodPage';
  const singleFoodPage({super.key});

  @override
  State<singleFoodPage> createState() => _singleFoodPageState();
}

class _singleFoodPageState extends State<singleFoodPage> {
  @override
  int simpleIntInput = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const appDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('FoodBuzz'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_border_sharp)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/images/pizza.jpg',
                      height: 220,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const iconWidget(),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Quantity',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    QuantityInput(
                      buttonColor: Colors.deepPurpleAccent,
                      value: simpleIntInput,
                      onChanged: (value) => setState(
                        () => simpleIntInput = int.parse(
                          value.replaceAll(',', ''),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent),
                      onPressed: (() {
                        Navigator.pushNamed(context, signinPage.routenames);
                      }),
                      child: SizedBox(
                        width: 100,
                        height: 40,
                        child: Row(
                          children: const [
                            Icon(Icons.done),
                            Text("Place Order"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
