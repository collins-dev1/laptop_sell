import 'package:flutter/material.dart';
import 'package:laptop_sell/pages/cart_page.dart';
import 'package:laptop_sell/pages/favourite_page.dart';
import 'package:laptop_sell/pages/laptop_home_page.dart';
import 'package:laptop_sell/pages/user_page.dart';

class NovalapHomePage extends StatefulWidget {
  const NovalapHomePage({super.key});

  @override
  State<NovalapHomePage> createState() => _NovalapHomePageState();
}

class _NovalapHomePageState extends State<NovalapHomePage> {
  int pageIndex = 0;

  @override
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
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
          ],
        ),
      ),
    );
  }
}
