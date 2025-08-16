import 'package:flutter/material.dart';
import 'package:laptop_sell/pages/Welcome.dart';
import 'package:laptop_sell/pages/register.dart';
import 'novalap_home_page.dart';
import 'package:slide_to_act/slide_to_act.dart';

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
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SlideAction(
                  text: "Slide to Get Started",
                  textStyle: TextStyle(color: Colors.white, fontSize: 18),
                  outerColor: Colors.black,
                  innerColor: Colors.white,
                  sliderButtonIcon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  onSubmit: () async {
                    // Show loading indicator
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      },
                    );

                    // Simulate some loading (e.g., fetch data, auth check, etc.)
                    await Future.delayed(Duration(seconds: 2));

                    // Close the loading dialog
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
