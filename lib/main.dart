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
        drawer: MyDrawer(
          onTap: (ctx, i) {
            setState(() {
              index = i;
              Navigator.pop(ctx);
            });
          },
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;

  // ignore: use_key_in_widget_constructors
  const MyDrawer({Key? key, required this.onTap});

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
                              width: 100,
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
                          ),
                        ],
                      ))),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => onTap(context, 0),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: () => onTap(context, 1),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: () => onTap(context, 2),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text("Logout"),
                    onTap: () => onTap(context, 0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
