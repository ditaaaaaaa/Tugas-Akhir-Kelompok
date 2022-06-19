import 'package:f/second.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:f/home.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);
  static const nameRoute = '/login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Akhir',
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(240, 136, 136, 136),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          color: Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Welcome!',
                    style: GoogleFonts.roboto(
                        color: Color.fromARGB(255, 59, 56, 77),
                        fontWeight: FontWeight.w500,
                        fontSize: 36),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/log.png'),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 50,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Color.fromRGBO(3, 76, 101, 1))),
                    onPressed: () {
                      // Navigator.of(context).push(
                      //  MaterialPageRoute(
                      //    builder: (context) {
                      //      return haldua();
                      //    },
                      //  ),
                      //) ;
                      Navigator.of(context).pushNamed(mainpage.nameRoute);
                    },
                    padding: EdgeInsets.all(10),
                    color: Color.fromRGBO(3, 76, 101, 1),
                    textColor: Colors.white,
                    child: Text("Login",
                        style: GoogleFonts.roboto(
                            fontStyle: FontStyle.italic, fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
