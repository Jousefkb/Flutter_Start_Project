import "package:flutter/material.dart";
import 'package:flutter_app_project/pages/high_risk.dart';
import 'package:flutter_app_project/pages/home.dart';
import 'package:flutter_app_project/pages/low_risk.dart';
import 'package:flutter_app_project/pages/x_community.dart';
import 'package:flutter_app_project/pages/x_map.dart';
import 'package:flutter_app_project/pages/x_report.dart';
//import 'package:flutter_app_project/pages/high_risk.dart';

class x_earth extends StatefulWidget {
  const x_earth({Key? key}) : super(key: key);

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

  State<x_earth> createState() => _x_earthState();
}

class _x_earthState extends State<x_earth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('X Earthquake', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      drawer: const NavigationDrawer(),
      //navigation drawer
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0, //flutter app yazısı ile metin kutusu arası fark
            ),
            Stack(
              children: [
                Container(
                  //depremi hissettiniz mi
                  height: 340,
                  padding: EdgeInsets.only(
                    top: 0.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  margin: EdgeInsets.only(
                    top: 0,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      "Did you feel the earthquake?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.black,
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => high_risk()));
                  },
                  child: Container(
                    //çok hissettim 5
                    height: 65,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                      left: 5,
                      top: 40,
                    ), // Yeni eklenen container
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      //image columnnnnnnnnnnnnnn
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "5 - I felt it strongly, Emergency!",
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 145, 29, 20),
                                        fontSize: 27.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  //4 - şiddetli hissettim
                  height: 55,
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(
                    left: 35, right: 35,
                    top: 115, // burayı değiştir
                  ), // Yeni eklenen container
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "4 - I felt it strongly",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 172, 109, 16),
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: .0),
                                Container(
                                  width: 0,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  //3 - hafif sarsıntı oldu, kimi eşyalar düştü
                  height: 45,
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(
                    left: 20, right: 20, top: 180, // burayı değiştir
                  ), // Yeni eklenen container
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "3 - I felt it moderately, some objects fell.",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 199, 184, 46),
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: .0),
                                Container(
                                  width: 0,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  //2
                  height: 40,
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(
                    left: 13, right: 13, top: 235, // burayı değiştir
                  ), // Yeni eklenen container
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    //image columnnnnnnnnnnnnnn
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "2 - I felt a light tremor, some items fell",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 66, 154, 69),
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: .0),
                                Container(
                                  width: 0,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => low_risk()));
                  },
                  child: Container(
                    //1
                    height: 35,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                      left: 40, right: 40, top: 285, // burayı değiştir
                    ), // Yeni eklenen container
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      //image columnnnnnnnnnnnnnn
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "1 - I felt very little, no items fell",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 86, 199, 144),
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(height: .0),
                                  Container(
                                    width: 0,
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  //konteynır 3
                  height: 350,
                  margin: EdgeInsets.only(
                    top: 360,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),

                  child: Column(
                    //image columnnnnnnnnnnnnnn

                    children: [
                      Divider(
                        color: const Color.fromARGB(255, 121, 121, 121),
                        thickness: 1,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(110),
                            child: Image.asset(
                              "images/boy.jpg",
                              height: 60,
                              width: 60,
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
                                    "Jouseph Blackstone",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(height: 1.0),
                                Text(
                                  "@jouseph",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14.0,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Please help us! ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            // fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start, // Sola dayamak için
                        ),
                        alignment: Alignment.centerLeft,
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/dd.jpg",
                            height: 200,
                            width: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Divider(
                        color: const Color.fromARGB(255, 121, 121, 121),
                        thickness: 1,
                      ),
                      // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
                    ],
                  ),
                ),
              ],
            ), // Yeni eklenen container ile arasına boşluk ekleyebilirsiniz
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
              onTap: () {},
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
