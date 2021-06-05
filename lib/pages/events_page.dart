import "package:flutter/material.dart";
import "package:psb_sport/widgets/header.dart";

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: <Widget>[
                  Container(child: Header()),
                ],
              ))),
    );
  }
}
