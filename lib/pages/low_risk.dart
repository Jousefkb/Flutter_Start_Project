import "package:flutter/material.dart";
import 'package:flutter_app_project/pages/home.dart';
import 'package:flutter_app_project/pages/x_earth.dart';
import 'package:flutter_app_project/pages/x_community.dart';
import 'package:flutter_app_project/pages/x_map.dart';
//import 'package:flutter_app_project/pages/low_risk.dart';
//import 'package:flutter_app_project/pages/x_report.dart';

class low_risk extends StatefulWidget {
  const low_risk({Key? key}) : super(key: key);

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

  State<low_risk> createState() => _low_risk();
}

class _low_risk extends State<low_risk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Low Risk', style: TextStyle(color: Colors.white)),
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
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "DEGREE OF EARTHQUAKE SENSATION :",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "1 - FELT A LITTLE",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(top: 10),
                            //photo ekle alanı
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(0)),
                            child: Center(
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        "ENTER YOUR LOCATION"), //text yazılacak yerin içeriği
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Text(
                                "Is there a collapsed building around you?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 10),
                              //photo ekle alanı
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Explain the situation",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 50, left: 40, right: 40),
                                child: Text(
                                  "Is there anyone injured or in worse condition?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 10),
                              //photo ekle alanı
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Explain the situation",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 50, left: 40, right: 40),
                                child: Text(
                                  "Do you have any discomfort such as shaking or headaches?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 10),
                              //photo ekle alanı
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Explain the situation",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                //add texti için alan
                height: 70.0,
                margin: EdgeInsets.only(top: 660),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(0)),
                child: Center(
                  child: Text(
                    "REPORT",
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
