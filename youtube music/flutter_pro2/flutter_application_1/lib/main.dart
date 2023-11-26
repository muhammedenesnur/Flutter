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
          body: Column(
        children: [
          // 62.36.17
          //48.14.32
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              const Color.fromRGBO(66, 32, 17, 1),
              const Color.fromRGBO(48, 14, 32, 1)
            ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(width: 35, "assets/image/logo.png"),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Music",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.podcasts,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/image/profil.jpeg"),
                            radius: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      categoryitem("Energize"),
                      categoryitem("Workout"),
                      categoryitem("Feel good"),
                      categoryitem("Relax"),
                      categoryitem("Commute"),
                      categoryitem("Party"),
                      categoryitem("Alternative-rock"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: const Color.fromRGBO(7, 5, 8, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADİO FROM A SONG",
                          style: TextStyle(
                              color: Color.fromRGBO(133, 132, 132, 1),
                              fontSize: 15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick Picks",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3.0, bottom: 3, right: 9, left: 9),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(14)),
                              child: Text(
                                "play all",
                                style: TextStyle(
                                    color: Color.fromRGBO(133, 132, 132, 1),
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        musicrow("assets/image/coverr1.jpg", "Lost",
                            "Sckott Codeine"),
                        musicrow("assets/image/cover1.png", "Time Capsule",
                            "CeyCey & EvaEna"),
                        musicrow("assets/image/cover2.jpg", "Aura & Soul",
                            "Asreriaeva"),
                        musicrow("assets/image/cover3.jpeg",
                            "Emptiness in mind", "The people"),
                        musicrow("assets/image/cover4.webp", "Stay",
                            "Alexander wollfy"),
                        musicrow("assets/image/cover8.jpg", "june", "betcha"),
                        musicrow("assets/image/cover9.jpg", "Devil Mirrors",
                            "No signal"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgotten favorites",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3.0, bottom: 3, right: 9, left: 9),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(14)),
                              child: Text(
                                "play all",
                                style: TextStyle(
                                    color: Color.fromRGBO(133, 132, 132, 1),
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              musicrow2("assets/image/coverr1.jpg", "Lost",
                                  "Sckott Codeine"),
                              musicrow2("assets/image/cover1.png",
                                  "Time Capsule", "CeyCey & EvaEna"),
                              musicrow2("assets/image/cover2.jpg",
                                  "Aura & Soul", "Asreriaeva"),
                              musicrow2("assets/image/cover3.jpeg",
                                  "Emptiness in mind", "The people"),
                              musicrow2("assets/image/cover4.webp", "Stay",
                                  "Alexander wollfy"),
                              musicrow2(
                                  "assets/image/cover8.jpg", "june", "betcha"),
                              musicrow2("assets/image/cover9.jpg",
                                  "Devil Mirrors", "No signal"),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: const Color.fromRGBO(33, 33, 33, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home, color: Colors.white),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.play_circle, color: Colors.white),
                      Text(
                        "Samples",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.explore, color: Colors.white),
                      Text(
                        "Explore",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.library_music, color: Colors.white),
                      Text(
                        "Library",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.slideshow, color: Colors.white),
                      Text(
                        "Upgrade",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Padding musicrow2(
    String photo,
    String title,
    String artist,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 160,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                artist,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget musicrow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 70,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    artist,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container categoryitem(
    String text,
  ) {
    return Container(
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 12, right: 12),
        margin: const EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(
            color: Color.fromARGB(32, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color.fromARGB(59, 255, 255, 255),
            )),
        child: Text(text,
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal)));
  }
}
