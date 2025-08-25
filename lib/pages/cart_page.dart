import 'package:flutter/material.dart';
import 'package:laptop_sell/pages/CartList.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 100),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // shadow color
                          spreadRadius: 1, // how wide the shadow spreads
                          blurRadius: 8, // how soft the shadow looks
                          offset: Offset(
                            0,
                            4,
                          ), // x,y position (0 = center, 4 = bottom)
                        ),
                      ],
                    ),

                    child: Icon(Icons.shopping_cart, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 10, // space between items in a row
                runSpacing: 10, // space between rows
                alignment: WrapAlignment.start,
                children: [
                  for (var i = 0; i < 4; i++)
                    CartList().getCard(
                      image:
                          "https://i.pinimg.com/1200x/11/27/40/112740860f91b8b3b57f5a9de70a5b51.jpg",
                      title: "Macbook Pro",
                      description: "16-inch, 2021",
                      price: "\$1200",
                      quantity: "1",
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
