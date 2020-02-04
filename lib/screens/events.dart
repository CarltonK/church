import 'package:catholic_church/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  String _title = 'Meeting';
  String _message =
      'There will be a meeting for all youth members. You are requested to arrive early. Entertainment will be provided. There will also be games and activities afterwards';
  String _date = '10 Jan';
  String _tag = 'Youth';

  var _myDuration = Duration(microseconds: 500);
  String hebrewsQuote =
      'And let us consider how we may spur one another on toward love and good deeds, not giving up meeting together, as some are in the habit of doing, but encouraging one another—and all the more as you see the Day approaching';

  Widget eventListItem(String title, String message, String date, String tag) {
    return ListTile(
      leading: Icon(Icons.event),
      title: Text(
        title,
        style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            message,
            style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 16)),
          ),
          SizedBox(
            height: 10,
          ),
          Chip(
            backgroundColor: Colors.grey[200],
            label: Text(tag),
            avatar: Icon(CupertinoIcons.group_solid),
            padding: EdgeInsets.all(5),
          ),
        ],
      ),
      trailing: Container(
        width: 55,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          date,
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600, color: Colors.red[600]),
        )),
      ),
      isThreeLine: true,
    );
  }

  Widget _quoteContainer(String text) {
    return AnimatedContainer(
      curve: Curves.bounceIn,
      duration: _myDuration,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.varelaRound(
                textStyle: TextStyle(
                    color: Colors.black, wordSpacing: 1.0, fontSize: 16)),
          ),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[300],
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
        ),
      ),
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _quoteContainer(hebrewsQuote),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hebrews 10:24-25',
                style: GoogleFonts.breeSerif(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 8, left: 8, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    eventListItem(_title, _message, _date, _tag),
                    Divider(),
                    eventListItem(_title, _message, _date, _tag),
                    Divider(),
                    eventListItem(_title, _message, _date, _tag),
                    Divider(),
                    eventListItem(_title, _message, _date, _tag),
                    Divider(),
                    eventListItem(_title, _message, _date, _tag),
                    Divider(),
                    eventListItem(_title, _message, _date, _tag),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
