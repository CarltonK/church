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
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Colors.grey[400],
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
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
                textAlign: TextAlign.center,
              ),
              Text(
                'Donations',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
                textAlign: TextAlign.center,
              )
            ]),
          ),
          drawer: AppDrawer(),
          body: TabBarView(children: <Widget>[
            _titheContainer(context),
            _donationsContainer(context)
          ]),
        ),
      ),
    );
  }
}

Widget _titheContainer(BuildContext context) {
  String tithe = 'Then Jacob took an oath, and said, If God will be with me, and keep me safe on my journey, and give me food and clothing to put on, So that I come again to my father\'s house in peace, then I will take the Lord to be my God, And this stone which I have put up for a pillar will be God\'s house: and of all you give me, I will give a tenth part to you';
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey[300], Colors.grey[400]],
              stops: [0.1, 0.9],
              tileMode: TileMode.clamp,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
           Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  tithe,
                  style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                          color: Colors.black, wordSpacing: 1.0, fontSize: 16)),
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Genesis 28:20-22',
                style: GoogleFonts.breeSerif(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Amount',
              style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 30)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '50',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '100',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 50,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '200',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '500',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '1000',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: (password) {
                  return null;
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorStyle:
                      TextStyle(fontWeight: FontWeight.w600, letterSpacing: .3),
                  helperStyle: TextStyle(color: Colors.white, fontSize: 12),
                  focusColor: Colors.indigo[900],
                  fillColor: Colors.indigo[900],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  labelText: 'Other amount',
                  labelStyle: GoogleFonts.muli(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                textInputAction: TextInputAction.done,
                validator: (password) {
                  return null;
                },
                maxLines: 10,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorStyle:
                      TextStyle(fontWeight: FontWeight.w600, letterSpacing: .3),
                  helperStyle: TextStyle(color: Colors.white, fontSize: 12),
                  focusColor: Colors.indigo[900],
                  fillColor: Colors.indigo[900],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  labelText: 'Write your message here',
                  alignLabelWithHint: true,
                  labelStyle: GoogleFonts.muli(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
            child: RaisedButton(
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: Text(
                'SEND TITHE',
                style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 20)),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _donationsContainer(BuildContext context) {
  String quote =
      'This is where you will display the cause that people will be donating to';
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey[300], Colors.grey[400]],
              stops: [0.1, 0.9],
              tileMode: TileMode.clamp,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  quote,
                  style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                          color: Colors.black, wordSpacing: 1.0, fontSize: 16)),
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Amount',
              style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 30)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[300],
                      elevation: 10.0,
                      label: Text(
                        '50',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '100',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 50,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '200',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '500',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  child: Chip(
                      shadowColor: Colors.grey[600],
                      elevation: 10.0,
                      label: Text(
                        '1000',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(fontSize: 20)),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: (password) {
                  return null;
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorStyle:
                      TextStyle(fontWeight: FontWeight.w600, letterSpacing: .3),
                  helperStyle: TextStyle(color: Colors.white, fontSize: 12),
                  focusColor: Colors.indigo[900],
                  fillColor: Colors.indigo[900],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  labelText: 'Other amount',
                  labelStyle: GoogleFonts.muli(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                textInputAction: TextInputAction.done,
                validator: (password) {
                  return null;
                },
                maxLines: 10,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  errorStyle:
                      TextStyle(fontWeight: FontWeight.w600, letterSpacing: .3),
                  helperStyle: TextStyle(color: Colors.white, fontSize: 12),
                  focusColor: Colors.indigo[900],
                  fillColor: Colors.indigo[900],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  labelText: 'Write your message here',
                  alignLabelWithHint: true,
                  labelStyle: GoogleFonts.muli(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
            child: RaisedButton(
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: Text(
                'SEND DONATION',
                style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 20)),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
