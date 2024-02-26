import "package:flutter/material.dart";
import 'package:flutter_app_project/pages/home.dart';
import 'package:flutter_app_project/pages/x_earth.dart';
import 'package:flutter_app_project/pages/x_community.dart';
import 'package:flutter_app_project/pages/x_map.dart';
//import 'package:flutter_app_project/pages/x_report.dart';

class x_report extends StatefulWidget {
  const x_report({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: List.generate(
              50,
              (index) => ListTile(
                    title: Text('Item ${index + 1}'),
                  ))),
    );
  }

  State<x_report> createState() => _x_report();
}

class _x_report extends State<x_report> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, //anahtar tanımlama
      appBar: AppBar(
        title: const Text('Report', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      drawer: const NavigationDrawer(),
      //navigation drawer
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Please report individuals who misuse, exploit, or mock the x-earthquake application. X will take any necessary actions regarding this matter. Note: Accounts filing unjustified complaints will also face the same penalties as the reported accounts.",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          //photo ekle alanı
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(0)),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    "Username"), //text yazılacak yerin içeriği
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                //add texti için alan
                height: 50.0,
                margin: EdgeInsets.only(top: 230),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Report",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  //toast ekle
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        // color: Colors.black,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        //   color: Colors.black,
        padding: const EdgeInsets.only(top: 5, left: 20),
        child: Wrap(
          runSpacing: 4,
          children: [
            ListTile(
              leading: const Icon(
                Icons.announcement_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const x_earth()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.people_outline,
                color: Colors.white,
              ),
              title: const Text(
                'Community',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const x_community()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.explore_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'Map',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const x_map()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
              title: const Text(
                'Report misuse',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.white30,
            ),
            ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  'Return X',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()))),
          ],
        ),
      );
}
