import 'dart:math';

import 'package:catholic_church/widgets/card.dart';
import 'package:catholic_church/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Clergy extends StatefulWidget {
  @override
  _ClergyState createState() => _ClergyState();
}

class _ClergyState extends State<Clergy> {
  final _pageController = PageController(
    viewportFraction: 0.6,
  );

  _builder(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          if (value >= 0) {
            double _lowerLimit = 0;
            double _upperLimit = pi / 2;

            value = (_upperLimit - (value.abs() * (_upperLimit - _lowerLimit)))
                .clamp(_lowerLimit, _upperLimit);
            value = _upperLimit - value;
            value *= -1;
          } else {
            //Won't work properly in case initialPage in changed in PageController
            if (index == 0) {
              value = 0;
            } else if (index == 1) {
              value = -1;
            }
          }
        }
        return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(value),
            alignment: Alignment.center,
            child: MyCard());
      },
      child: MyCard(),
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
        child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return _builder(index);
            }),
      ),
    );
  }
}
