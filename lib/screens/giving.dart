import 'package:catholic_church/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Giving extends StatefulWidget {
  @override
  _GivingState createState() => _GivingState();
}

class _GivingState extends State<Giving> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[300],
    ));
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Giving',
            style: GoogleFonts.roboto(
                textStyle:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          ),
          bottom: TabBar(tabs: [
            Text(
              'Tithe',
              style: GoogleFonts.dosis(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500)),
              textAlign: TextAlign.center,
            ),
            Text(
              'Donations',
              style: GoogleFonts.dosis(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500)),
              textAlign: TextAlign.center,
            )
          ]),
        ),
        drawer: AppDrawer(),
        body: TabBarView(
            children: <Widget>[_titheContainer(), _donationsContainer()]),
      ),
    );
  }
}

Widget _titheContainer() {
  return Container(color: Colors.yellow);
}

Widget _donationsContainer() {
  return Container(
    color: Colors.red,
  );
}
