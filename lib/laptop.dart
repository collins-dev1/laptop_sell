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
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: EdgeInsets.fromLTRB(1, 8, 0, 8),
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
                      child: Text("Apple"),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: EdgeInsets.fromLTRB(10, 8, 0, 8),
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
                      child: Text("Asus"),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: EdgeInsets.fromLTRB(10, 8, 0, 8),
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
                      child: Text("Hp"),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: EdgeInsets.fromLTRB(10, 8, 0, 8),
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
                      child: Text("Dell"),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: EdgeInsets.fromLTRB(10, 8, 0, 8),
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
                      child: Text("Samsung"),
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
