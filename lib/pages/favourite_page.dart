import 'package:flutter/material.dart';

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
                  for (var i = 0; i < 6; i++)
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

class FavouriteList {
  Widget getCard({
    image1,
    image2,
    image3,
    image4,
    image5,
    image6,
    image7,
    title,
    numberOfProducts,
  }) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white60,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // shadow color
            spreadRadius: 2, // how wide the shadow spreads
            blurRadius: 8, // how soft the shadow looks
            offset: Offset(0, 4), // x,y position (0 = center, 4 = bottom)
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Image.asset(image1, width: 70, height: 70),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Image.asset("assets/asus.png", width: 70, height: 70),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Image.asset("assets/asus.png", width: 70, height: 70),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red,
                            ),
                            child: Image.asset(
                              "assets/asus.png",
                              width: 35,
                              height: 35,
                            ),
                          ),
                          SizedBox(width: 4),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red,
                            ),
                            child: Image.asset(
                              "assets/asus.png",
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red,
                        ),
                        child: Image.asset(
                          "assets/asus.png",
                          width: 35,
                          height: 35,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red,
                        ),
                        child: Image.asset(
                          "assets/asus.png",
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Macbook",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "80+ Products",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
