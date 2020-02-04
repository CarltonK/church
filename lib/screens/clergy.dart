import 'package:catholic_church/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Clergy extends StatefulWidget {
  @override
  _ClergyState createState() => _ClergyState();
}

class _ClergyState extends State<Clergy> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[300],
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clergy',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
        ),
      ),
      drawer: AppDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                tileMode: TileMode.clamp,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey[300], Colors.grey[400]],
                stops: [0.1, 0.8])),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}
