import "package:flutter/material.dart";
import 'package:flutter_app_project/pages/home.dart';
import 'package:flutter_app_project/pages/x_earth.dart';
import 'package:flutter_app_project/pages/x_map.dart';
import 'package:flutter_app_project/pages/x_report.dart';

class x_community extends StatefulWidget {
  const x_community({Key? key}) : super(key: key);

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

  State<x_community> createState() => _x_community();
}

class _x_community extends State<x_community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      drawer: const NavigationDrawer(),
      //navigation drawer
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(),
              ),
            ),
            SizedBox(
              height: 10.0, //flutter app yazısı ile metin kutusu arası fark
            ),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Discover new communities",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Stack(
              children: [
                Container(
                  //örnek containerrrrrr
                  height: 130,
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  margin: EdgeInsets.only(
                    top: 0,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn

                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/md.jpg",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start, //yeni ekledim
                              children: [
                                Text(
                                  "Earthquake in the Malatya Region",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "1.080 üye",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              10.0), // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
                Container(
                  //konteynır 2
                  height: 130,
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  margin: EdgeInsets.only(
                    top: 115,
                  ), // Yeni eklenen container
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/kmd.jpg",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Earthquake in the Kahramanmaraş Region",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "173 üye",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              20.0), // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  //konteynır 3
                  height: 150,
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  margin: EdgeInsets.only(
                    top: 230,
                  ), // Yeni eklenen container
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/hm.jpg",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Earthquake in the Hatay Region",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "300 üye",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              20.0), // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
                Container(
                  //konteynır 3
                  height: 150,
                  padding: EdgeInsets.only(
                    top: 0.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  margin: EdgeInsets.only(
                    top: 350,
                  ), // Yeni eklenen container
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Show more",
                                    style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize: 13.0,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              20.0), // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
              ],
            ),
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
              onTap: () {},
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
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const x_report()));
              },
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
