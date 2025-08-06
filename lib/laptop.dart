import 'package:flutter/material.dart';

void main() {
  // runApp method
  runApp(const NovalapEntryWidget());
}

// Entry Widget
class NovalapEntryWidget extends StatelessWidget {
  const NovalapEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NovaLap App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const NovalapHomePage(title: 'NovaLap Home Page'),
    );
  }
}

class NovalapHomePage extends StatefulWidget {
  const NovalapHomePage({super.key, required this.title});

  final String title;

  @override
  State<NovalapHomePage> createState() => _NovalapHomePageState();
}

class _NovalapHomePageState extends State<NovalapHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
    );
  }
}
