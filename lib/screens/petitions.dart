import 'package:catholic_church/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Petitions extends StatefulWidget {
  @override
  _PetitionsState createState() => _PetitionsState();
}

class _PetitionsState extends State<Petitions> {
  var _myDuration = Duration(microseconds: 500);
  String philipiansQuote =
      'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God. And the peace of God, which transcends all understanding, will guard your hearts and your minds in Christ Jesus';

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Petitions',
            style: GoogleFonts.roboto(
                textStyle:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          ),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Container(
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
                _quoteContainer(philipiansQuote),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Phillipians 4:6-7',
                    style: GoogleFonts.breeSerif(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: DropdownButton(
                              isExpanded: true,
                              underline: Divider(
                                color: Colors.blue,
                                thickness: 2,
                              ),
                              hint: Text(
                                'Category',
                                style: GoogleFonts.muli(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              items: [],
                              onChanged: (value) {}),
                        ),
                        TextFormField(
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              errorStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: .3),
                              helperStyle:
                                  TextStyle(color: Colors.white, fontSize: 12),
                              focusColor: Colors.indigo[900],
                              fillColor: Colors.indigo[900],
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              labelText: 'Title',
                              labelStyle: GoogleFonts.muli(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            maxLines: 10,
                            style: GoogleFonts.muli(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              errorStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: .3),
                              helperStyle:
                                  TextStyle(color: Colors.white, fontSize: 12),
                              focusColor: Colors.indigo[900],
                              fillColor: Colors.indigo[900],
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              labelText: 'Say a little prayer',
                              alignLabelWithHint: true,
                              labelStyle: GoogleFonts.muli(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: MaterialButton(
                            minWidth: 150,
                            height: 40,
                            color: Colors.grey[200],
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
