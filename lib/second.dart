import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:f/login.dart';

class second extends StatelessWidget {
  second({Key? key}) : super(key: key);
  static const nameRoute = '/second';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Akhir',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Try NewMe Premium',
                style: GoogleFonts.roboto(
                  fontSize: 34,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 59, 56, 77),
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Image.asset('assets/gunung.png'),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 400,
                child: Text(
                  '7 days of unlimited access for free',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 59, 56, 77),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(Icons.check_box_outlined),
                    ),
                    Text(
                      'Unlimlited access to novels',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 59, 56, 77),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(Icons.check_box_outlined),
                    ),
                    Text(
                      'Unlimlited access to all practice',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 59, 56, 77),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(Icons.check_box_outlined),
                    ),
                    Text(
                      'Unlimlited access to all programs',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 59, 56, 77),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 400,
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
                    Navigator.of(context).pushNamed(login.nameRoute);
                  },
                  padding: EdgeInsets.all(10),
                  color: Color.fromRGBO(3, 76, 101, 1),
                  textColor: Colors.white,
                  child: Text("Great! Save me a seat",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.italic, fontSize: 15)),
                ),
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
