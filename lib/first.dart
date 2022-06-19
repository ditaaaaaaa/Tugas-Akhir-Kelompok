import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:f/second.dart';

class first extends StatelessWidget {
  first({Key? key}) : super(key: key);
  static const nameRoute = '/first';

  // This widget is the root of your application.
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
                'How does it work?',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 59, 56, 77),
                ),
              ),
              Text(
                'NewMe',
                style: GoogleFonts.roboto(
                  fontSize: 64,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 59, 56, 77),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('assets/orng.png'),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 400,
                child: Text(
                  'Newme has a science-based technique, where you process the limiting belief step by step',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 59, 56, 77),
                  ),
                  textAlign: TextAlign.center,
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
                    Navigator.of(context).pushNamed(second.nameRoute);
                  },
                  padding: EdgeInsets.all(10),
                  color: Color.fromRGBO(3, 76, 101, 1),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  child: Text("Great!",
                      style: GoogleFonts.roboto(
                          fontStyle: FontStyle.italic, fontSize: 15)),
                ),
              ),
              Container(
                width: 400,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.grey)),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //  MaterialPageRoute(
                    //    builder: (context) {
                    //      return haldua();
                    //    },
                    //  ),
                    //) ;
                    Navigator.of(context).pushNamed(second.nameRoute);
                  },
                  padding: EdgeInsets.all(10),
                  color: Color.fromARGB(255, 112, 112, 112),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  child: Text("Skip",
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
