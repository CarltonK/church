import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16.0,
      child: ListView(
        children: <Widget>[
          Container(
            height: 55,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop())
              ],
            ),
          ),
          _createDrawerItem(
              text: 'Events',
              onTap: () => Navigator.of(context).pushReplacementNamed('/')),
          _createDrawerItem(
              text: 'Announcements',
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/announce')),
          _createDrawerItem(
              text: 'Petitions',
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/petitions')),
          _createDrawerItem(
              text: 'Clergy',
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/clergy')),
          _createDrawerItem(
              text: 'Giving',
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/giving')),
          Divider(
            thickness: 2,
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text(
              'Version',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontSize: 24,
                letterSpacing: 0.5,
              )),
            ),
            subtitle: Text(
              '1.0.0',
              style: GoogleFonts.roboto(),
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.blueGrey[200],
          ),
          ExpansionTile(
            title: Text(
              'Developer',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w400)),
            ),
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Name: Mark Carlton',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Email: mcarlton33@gmail.com',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Phone: 0727286123',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Would you like an app ?',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.blue,
                    onPressed: () {
                      print('This will call me');
                    },
                    child: Text(
                      'Call',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.blue,
                    onPressed: () {
                      print('This will email me');
                    },
                    child: Text(
                      'Email',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _createDrawerItem({String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Text(
      text,
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
              color: Colors.black,
              fontSize: 24,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w300)),
    ),
    onTap: onTap,
  );
}
