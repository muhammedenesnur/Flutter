// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              Header(),
              Expanded(
                  child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SearchBox(),
                    Divider(),
                    TopLocations(),
                    Divider(),
                    NearLocations(),
                    Divider(),
                    Suggestions(),
                    Divider(),
                    TopRated(),
                  ]),
                ),
              )),
              BottomMenu(),
            ],
          ),
        ));
  }
Widget TopRated() => Container(
        child: Column(children: [
          TitleItem("TopRated", "View All"),
          SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(
              children: [
                LocationItem("assets/images/m6.jpg","Manzara","7km from you","14₺"),
                LocationItem("assets/images/m5.jpg","Manzara","20km from you","24₺"),
                LocationItem("assets/images/m4.jpg","Manzara","30km from you","14₺"),
                LocationItem("assets/images/m3.jpg","Manzara","30km from you","64₺"),
                LocationItem("assets/images/m2.jpg","Manzara","30km from you","30₺"),
                LocationItem("assets/images/m1.jpg","Manzara","30km from you","44₺"),
              ],
            ),
          ),
        ]),
      );
  Widget Suggestions() => Container(
        child: Column(children: [
          TitleItem( "Suggestions","View All"),
          
          SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(
              children: [
                LocationItem("assets/images/m6.jpg","Manzara","7km from you","14₺"),
                LocationItem("assets/images/m5.jpg","Manzara","20km from you","24₺"),
                LocationItem("assets/images/m4.jpg","Manzara","30km from you","14₺"),
                LocationItem("assets/images/m3.jpg","Manzara","30km from you","64₺"),
                LocationItem("assets/images/m2.jpg","Manzara","30km from you","30₺"),
                LocationItem("assets/images/m1.jpg","Manzara","30km from you","44₺"),
              ],
            ),
          ),
        ]),
      );

  Widget NearLocations() => Container(
        child: Column(children: [
          TitleItem("Near You", "View All"),
          SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(
              children: [
                LocationItem("assets/images/m1.jpg","Manzara","7km from you","14₺"),
                LocationItem("assets/images/m2.jpg","Manzara","20km from you","24₺"),
                LocationItem("assets/images/m3.jpg","Manzara","30km from you","14₺"),
                LocationItem("assets/images/m4.jpg","Manzara","30km from you","64₺"),
                LocationItem("assets/images/m5.jpg","Manzara","30km from you","30₺"),
                LocationItem("assets/images/m6.jpg","Manzara","30km from you","44₺"),
              ],
            ),
          ),
        ]),
      );

  Widget LocationItem(String photo,String title,String description,String fiyat) => Container(
      width: 155,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
              child: Image.asset(
            width: 150,
            photo,)),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 32, 32, 32),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 8,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsetsDirectional.all(4),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  fiyat,
                  style: TextStyle(
                    fontSize: 8,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          )
        ],
      ));

  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Top Locations", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("assets/images/p1.jpg", "Keyvan A."),
                  StoryItem("assets/images/p2.jpg", "Ahmet Ö."),
                  StoryItem("assets/images/p3.jpg", "Ramazan S."),
                  StoryItem("assets/images/p4.jpg", "Johny D."),
                  StoryItem("assets/images/p5.jpg", "Al paacino."),
                  StoryItem("assets/images/p6.png", "Leo D."),
                  StoryItem("assets/images/p1.jpg", "Keyvan A."),
                  StoryItem("assets/images/p2.jpg", "Ahmet Ö."),
                  StoryItem("assets/images/p3.jpg", "Ramazan S."),
                  StoryItem("assets/images/p4.jpg", "Johny D."),
                  StoryItem("assets/images/p5.jpg", "Al paacino."),
                  StoryItem("assets/images/p6.png", "Leo D."),
                ],
              ),
            ),
          ],
        ),
      );

  Widget SearchBox() => Container(
      height: 50,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 17,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Caferağa,Kadiköy",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Icon(
            Icons.tune,
            size: 17,
            color: Color.fromRGBO(236, 125, 87, 1),
          ),
        ],
      ));

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 241, 156, 101),
                    Color.fromARGB(255, 237, 128, 94),
                  ],
                ),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 27, 25, 25),
              fontSize: 18,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() => Container(
        width: double.infinity,
        // color: Colors.yellow,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, K1",
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Explore Views",
                  style: TextStyle(
                    color: Color.fromARGB(255, 27, 25, 25),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.sunny,
                    color: Color.fromRGBO(236, 125, 87, 1),
                    size: 18,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.notifications,
                    size: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget BottomMenu() => Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
        color: Color.fromARGB(255, 243, 243, 243),
        width: 1,
      )),
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        BottomMenuItem("Home", Icons.home, true),
        BottomMenuItem("Moments", Icons.groups, false),
        HighLightedItem("Book", Icons.maps_ugc),
        BottomMenuItem("Chat", Icons.forum, false),
        BottomMenuItem("Profile", Icons.person, false),
      ]));

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);
    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    } else {}
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          )
        ],
      ),
    );
  }

  Widget HighLightedItem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
