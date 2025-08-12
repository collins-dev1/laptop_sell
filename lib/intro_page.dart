import 'package:flutter/material.dart';
import 'novalap_home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 150,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 1),
          child: Image.asset('assets/laptoplogo.png', height: 400),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Laptops on your fingers",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/fe/58/f3/fe58f3a4fab98ccd2ee787eeea559351.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: TextButton(
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 11,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NovalapHomePage(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_circle_right, size: 35),
                    SizedBox(width: 30),
                    Text('Click to Home'),
                    SizedBox(width: 140),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
