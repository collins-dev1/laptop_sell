// create a card list
import 'package:flutter/material.dart';

class LaptopList {
  Widget getCard({thumbnail, title, price}) {
    return Container(
      width: 160,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                // Image + Background Shape
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Background shape
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    // Product image
                    Image.asset(
                      thumbnail,
                      width: 350,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(height: 10),

                // Product Title
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),

                // Price
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    price,
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),

                // Rating Stars
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(5, (index) {
                    return Icon(Icons.star, size: 14, color: Colors.orange);
                  }),
                ),
              ],
            ),
          ),

          // Like Icon Button at top-right
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange,
              ),
              child: Icon(Icons.favorite, size: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}