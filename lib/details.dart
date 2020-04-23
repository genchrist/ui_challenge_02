import 'dart:async';

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Details({
    Key key,
    @required this.name,
    @required this.bio,
    @required this.tag,
    @required this.color,
    @required this.gr1,
    @required this.gr2,
    @required this.image,
  }) : super(key: key);

  final Color color;
  final String tag;
  final String image;
  final String name;
  final String bio;
  final Color gr1;
  final Color gr2;
  @override
  _DetailsState createState() => _DetailsState(
      color: color,
      tag: tag,
      image: image,
      name: name,
      bio: bio,
      gr1: gr1,
      gr2: gr2);
}

class _DetailsState extends State<Details> {
  _DetailsState({
    Key key,
    @required this.name,
    @required this.bio,
    @required this.tag,
    @required this.color,
    @required this.gr1,
    @required this.gr2,
    @required this.image,
  });

  bool light = false;
  double height = 0;

  Color color;
  String tag;
  String image;
  String name;
  String bio;
  Color gr1;
  Color gr2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 600), () {
      setState(() {
        light = true;
        height = 350;
      });
    });
  }

  getOut() {
    Timer(Duration(microseconds: 30), () {
      setState(() {
        light = false;
        height = 0;
      });
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: false,
        child: ListView(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  Image.network(
                    "https://itbrief.co.nz/uploads/story/2020/01/17/digital_globe11.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  light
                      ? Trapezoid(
                          cutLength: 100.0,
                          child: AnimatedContainer(
                            width: 300,
                            height: height,
                            duration: Duration(microseconds: 30),
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                  color.withOpacity(0.5),
                                  Colors.transparent,
                                ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                          ),
                        )
                      : Container(),
                  light
                      ? Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 10,
                            width: MediaQuery.of(context).size.width - 200,
                            color: color,
                          ),
                        )
                      : Container(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Hero(tag: tag, child: Image.asset(image)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [gr1, gr2]),
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(50))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          getOut();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  light
                      ? Container()
                      : Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black54,
                          ),
                        )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(gradient: LinearGradient(colors: [gr1, gr2])),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      bio,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
