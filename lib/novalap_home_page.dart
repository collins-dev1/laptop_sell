import 'package:flutter/material.dart';
import 'package:laptop_sell/pages/bottomNavbar.dart';
import 'package:laptop_sell/pages/cart_page.dart';
import 'package:laptop_sell/pages/favourite_page.dart';
import 'package:laptop_sell/pages/laptop-details.dart';
import 'package:laptop_sell/pages/laptop_home_page.dart';
import 'package:laptop_sell/pages/user_page.dart';

class NovalapHomePage extends StatefulWidget {
  final int startingIndex;
  const NovalapHomePage({super.key, this.startingIndex = 0});

  @override
  State<NovalapHomePage> createState() => _NovalapHomePageState();
}

class _NovalapHomePageState extends State<NovalapHomePage> {
  late int pageIndex;

  @override
  void initState() {
    super.initState();
    pageIndex = widget.startingIndex;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],

      appBar: AppBar(
        elevation: 4.0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 20),
          child: Image.asset('assets/laptoplogo2.png', height: 400),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("search");
            },
          ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/1200x/54/fe/47/54fe47995a227368e77f8b2260ef44ce.jpg',
                ),
              ),
              accountName: Text('Collins'),
              accountEmail: Text('hello@collins.com'),
            ),
            ListTile(title: Text('Home'), leading: Icon(Icons.home)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("About"), leading: Icon(Icons.info_sharp)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Contact"), leading: Icon(Icons.contact_mail)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Logout"), leading: Icon(Icons.logout)),
            Divider(color: Colors.black),
            ListTile(title: Text("App Version: 1.0.0")),
            Divider(color: Colors.black),
          ],
        ),
      ),

      body: IndexedStack(
        index: pageIndex,
        children: const [
          LaptopHomePage(),
          FavouritePage(),
          cartPage(),
          UserPage(),
          LaptopDetailPage(),
        ],
      ),

      bottomNavigationBar: NovaLapBottomNav(
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
