import "package:flutter/material.dart";
import 'package:psb_sport/widgets/events_list.dart';
import "package:psb_sport/widgets/header.dart";

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: <Widget>[
            Container(child: Header()),
            Expanded(child: EventsList()),
          ],
        ),
      ),
    ));
  }
}
