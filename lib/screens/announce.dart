import 'package:catholic_church/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Announcements extends StatefulWidget {
  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  String _title = 'Meeting';
  String _message =
      'There will be a meeting for all youth members. You are requested to arrive early. Entertainment will be provided. There will also be games and activities afterwards';
  String _date = '10 Jan';
  String _tag = 'Youth';

  Widget eventListItem(String title, String message, String date, String tag) {
    return ListTile(
      leading: Icon(Icons.announcement),
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
            backgroundColor: Colors.grey[300],
            label: Text(tag),
            avatar: Icon(CupertinoIcons.group_solid),
            padding: EdgeInsets.all(5),
          ),
        ],
      ),
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
          'Annoncements',
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
                colors: [Colors.grey[100], Colors.grey[200]],
                stops: [0.1, 0.8])),
        padding: EdgeInsets.all(16),
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
            Divider(),
            eventListItem(_title, _message, _date, _tag),
          ],
        ),
      ),
    );
  }
}
