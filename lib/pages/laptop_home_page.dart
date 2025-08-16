import 'package:flutter/material.dart';
import 'package:laptop_sell/pages/BrandList.dart';
import 'package:laptop_sell/pages/LaptopList.dart';
import 'package:laptop_sell/pages/laptop-details.dart';

class LaptopHomePage extends StatelessWidget {
  const LaptopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Choose the Brand",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // List of brand names
                    for (var brand in [
                      "Apple",
                      "Dell",
                      "HP",
                      "Lenovo",
                      "Asus",
                      "Acer",
                      "MSI",
                    ])
                      BrandList.getCard(title: brand),
                  ],
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () async {
                  // Show loading indicator
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                          backgroundColor: Colors.white,
                        ),
                      );
                    },
                  );

                  // Simulate some loading (e.g., fetch data, auth check, etc.)
                  await Future.delayed(Duration(seconds: 2));

                  // Close the loading dialog
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LaptopDetailPage()),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Asus Laptops",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Wrap(
                      spacing: 10, // space between items in a row
                      runSpacing: 10, // space between rows
                      alignment: WrapAlignment.start,
                      children: [
                        for (var i = 0; i < 11; i++)
                          LaptopList().getCard(
                            thumbnail: "assets/asus.png",
                            title: "Asus ROG Strix",
                            price: "\$ 290.18",
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
