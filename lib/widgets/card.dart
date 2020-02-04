import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1571260765720-53b1e8d23575?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=729&q=80'))),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
              bottom: 20,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'Fr. Frank',
                    style: GoogleFonts.dosis(
                        color: Colors.black,
                        fontSize: 30,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
