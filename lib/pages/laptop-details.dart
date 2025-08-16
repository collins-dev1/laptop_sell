import 'package:flutter/material.dart';
import 'package:laptop_sell/novalap_home_page.dart';
import 'package:laptop_sell/pages/bottomNavbar.dart';
import 'package:carousel_slider/carousel_slider.dart' as cs;

class LaptopDetailPage extends StatefulWidget {
  const LaptopDetailPage({super.key});

  @override
  State<LaptopDetailPage> createState() => _LaptopDetailPageState();
}

class _LaptopDetailPageState extends State<LaptopDetailPage> {
  int pageIndex = 0;
  int currentIndex = 0; // for indicator dots

  final List<String> _images = [
    "assets/asus.png",
    "assets/lap1.png",
    "assets/lap2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        centerTitle: true,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 20),
          child: Image.asset('assets/laptoplogo2.png', height: 400),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              print("search");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Background Container
                      Container(
                        width: 300,
                        height: 220,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(350),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(200),
                          ),
                        ),
                      ),

                      // Carousel
                      cs.CarouselSlider(
                        options: cs.CarouselOptions(
                          height: 200,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                        items: _images.map((path) {
                          return Image.asset(
                            path,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          );
                        }).toList(),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  // Rating Stars
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Icon(Icons.star, size: 18, color: Colors.orange);
                    }),
                  ),

                  SizedBox(height: 2),
                  // Product Title
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Asus Laptop",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),

                  // Price
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "\$2000",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.black, width: 2)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Colors",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      for (var item in [
                        "First item",
                        "Second item",
                        "Third item",
                        "Fourth item",
                      ])
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• ",
                                style: TextStyle(fontSize: 20),
                              ), // Bullet
                              Expanded(
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          side: const BorderSide(color: Colors.black),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 11,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () => print('Add to cart'),
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),

                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          side: const BorderSide(color: Colors.blue),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 11,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () => print('Buy Now'),
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: NovaLapBottomNav(
        currentIndex: pageIndex,
        onTap: (index) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => NovalapHomePage(startingIndex: index),
            ),
          );
        },
      ),
    );
  }
}
