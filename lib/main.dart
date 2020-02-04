import 'package:catholic_church/screens/clergy.dart';
import 'package:catholic_church/screens/events.dart';
import 'package:catholic_church/screens/giving.dart';
import 'package:catholic_church/screens/petitions.dart';
import 'package:flutter/material.dart';
import 'package:catholic_church/screens/announce.dart';
import 'package:catholic_church/screens/clergy_info.dart';

void main() => runApp(ChurchApp());

class ChurchApp extends StatefulWidget {
  @override
  _ChurchAppState createState() => _ChurchAppState();
}

class _ChurchAppState extends State<ChurchApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/announce': (context) => Announcements(),
        '/clergyinfo': (context) => ClergyInfo(),
        '/clergy': (context) => Clergy(),
        '/': (context) => Events(),
        '/giving': (context) => Giving(),
        '/petitions': (context) => Petitions()
      },
    );
  }
}
