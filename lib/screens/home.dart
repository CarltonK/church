import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catholic_church/widgets/drawer.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[300],
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
        ),
        elevation: 0.0,
      ),
      drawer: AppDrawer(),
    );
  }
}
