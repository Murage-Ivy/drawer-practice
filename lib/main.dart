import 'package:drawer_prac/Home.dart';
import 'package:drawer_prac/Profile.dart';
import 'package:drawer_prac/Settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  List<Widget> list = [
    Home(),
    const Profile(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.outfit().fontFamily,
        appBarTheme: AppBarTheme(color: Color(0xFF1a1b4b)),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer(),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  // final Function onTap;

  // MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              child: DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF1a1b4b)),
                  child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 80,
                              height: 100,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/woman.jpeg'),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Alice Njuguna",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xFFf7a400)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "alice@gmail.com",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xFFf7a400)),
                          )
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
