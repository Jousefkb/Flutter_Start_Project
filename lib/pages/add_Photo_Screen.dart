import 'package:flutter/material.dart';

//bu sayfa home.dart safasında + tuşuna basınca gidilecek olan sayfa
class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //add butonu
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          openDialog();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Add Course",
          style: TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right:
                20.0), //containere margin ekledik yani dışardaki objelere uzaklık
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //course ekleme screen yazısı
          Text(
            "course ekleme screen",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0), //boşluk
          Center(
            child: Material(
              elevation: 0, //boyut
              child: Container(
                width: 150, //genişlik
                height: 150, //uzunluk
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black, width: 1.5), //container'a border
                    borderRadius:
                        BorderRadius.circular(20.0)), //kenar yumuşatma
                child: Icon(Icons.camera_alt_outlined,
                    color: Colors.black), //kamera ikon
              ), //kamera çerçevesini konteynırı
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Photo Ekle",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
          Container(
            //photo ekle alanı
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Course name"), //text yazılacak yerin içeriği
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            //add texti için alan
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Add",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Future openDialog() => showDialog(
      //openDialog uyarı linki
      context: context,
      builder: (context) => AlertDialog(
              title: Container(
            child: Column(children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.cancel),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text(
                    "Add video",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                //Add video ile add video link yazısı arasındaki boşluk farkı
                height: 20.0,
              ),
              Text("Add video link"),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "add link"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                //gelen uyarının save butonu
                width: 200.0,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ]),
          )));
}
