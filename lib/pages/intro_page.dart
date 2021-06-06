import 'dart:async';

import "package:flutter/material.dart";

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/');
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xff2B2D83),
        child: Container(
            width: 150,
            child: Image(
              image: AssetImage("assets/images/psb-intro-logo.png"),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
