import 'package:flutter/material.dart';

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
                  color: Colors.blue[200],
                ),
                child: Image.asset(image1, width: 70, height: 70),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow[200],
                ),
                child: Image.asset(image2, width: 70, height: 70),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red[100],
                ),
                child: Image.asset(image3, width: 70, height: 70),
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
                              color: Colors.pink[200],
                            ),
                            child: Image.asset(image4, width: 35, height: 35),
                          ),
                          SizedBox(width: 4),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.purpleAccent[100],
                            ),
                            child: Image.asset(image5, width: 35, height: 35),
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
                          color: Colors.greenAccent[100],
                        ),
                        child: Image.asset(image6, width: 35, height: 35),
                      ),
                      SizedBox(width: 4),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange[200],
                        ),
                        child: Image.asset(image7, width: 35, height: 35),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            numberOfProducts,
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
