import "package:flutter/material.dart";
import 'package:psb_sport/widgets/event_info.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Stack(
          alignment: Alignment(0, 1),
          children: <Widget>[
            Image(
              image: NetworkImage(
                  "https://cdni.rt.com/russian/images/2017.05/article/591fe2f6c3618802048b45f5.jpg"),
              fit: BoxFit.cover,
            ),
            EventInfo(),
          ],
        ),
      ),
    ));
  }
}
