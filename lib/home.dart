import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:f/chat.dart';

class mainpage extends StatelessWidget {
  mainpage({Key? key}) : super(key: key);
  static const nameRoute = '/mainpage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Akhir',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text("Novels",
              style: TextStyle(color: Color.fromARGB(255, 59, 56, 77))),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.chat_bubble,
                  color: Color.fromARGB(255, 59, 56, 77)),
              tooltip: 'Show Snackbar',
              onPressed: () {
                // Navigator.of(context).push(
                //  MaterialPageRoute(
                //    builder: (context) {
                //      return haldua();
                //    },
                //  ),
                //) ;
                Navigator.of(context).pushNamed(chat.nameRoute);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 59, 56, 77),
              ),
              tooltip: 'Go to the next page',
              onPressed: () {},
            ),
          ],
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          //widget yang akan ditampilkan dalam 1 baris adalah 2
          crossAxisCount: 2,
          children: [
            //card ditampilkan disini
            //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
            CustomCard(title: "Jhon Story", image: "assets/john.png"),
            CustomCard(title: "Jhon 2 Story", image: "assets/jhon2.png"),
            CustomCard(title: "Sara Story", image: "assets/sara.png"),
            CustomCard(title: "Mira Story", image: "assets/mira.png"),
          ],
        ),
      ),
    );
  }
}

//membuat customcard yang bisa kita panggil setiap kali dibutuhkan
class CustomCard extends StatelessWidget {
  //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
  //parameter ini akan mengisi title dan gambar pada setiap card
  CustomCard({required this.title, required this.image});

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 80,
      ),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        //menambahkan bayangan
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(title,
                  style: TextStyle(color: Color.fromARGB(255, 59, 56, 77))),
            )
          ],
        ),
      ),
    );
  }
}
