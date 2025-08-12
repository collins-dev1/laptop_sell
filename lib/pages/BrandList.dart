import 'package:flutter/material.dart';

class BrandList {
  static Widget getCard({required String title}) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Text(title),
    );
  }
}