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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
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
          children: [
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

      body: IndexedStack(index: pageIndex, children: [LaptopHomePage()]),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, -3), // moves shadow upward
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (index) {
            // if (index == 0) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => LaptopHomePage()),
            //   );
            // } else {
            //   setState(() {
            //     pageIndex = index;
            //   });
            // }
            setState(() {
              pageIndex = index;
            });
          },
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Basket',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
          ],
        ),
      ),
    );
  }
}

// create a card list
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

class LaptopHomePage extends StatefulWidget {
  const LaptopHomePage({super.key});

  @override
  State<LaptopHomePage> createState() => _LaptopHomePageState();
}

class _LaptopHomePageState extends State<LaptopHomePage> {
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
                    "Choose a Brand",
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
              Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
