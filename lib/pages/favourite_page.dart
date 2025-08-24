import 'package:flutter/material.dart';
import 'package:laptop_sell/pages/favourite_card.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Favourite items",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 10, // space between items in a row
                runSpacing: 10, // space between rows
                alignment: WrapAlignment.start,
                children: [
                  for (var i = 0; i < 7; i++)
                    FavouriteList().getCard(
                      image1: "assets/asus.png",
                      image2: "assets/asus.png",
                      image3: "assets/asus.png",
                      image4: "assets/asus.png",
                      image5: "assets/asus.png",
                      image6: "assets/asus.png",
                      image7: "assets/asus.png",
                      title: "Macbook",
                      numberOfProducts: "80+ Products",
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
