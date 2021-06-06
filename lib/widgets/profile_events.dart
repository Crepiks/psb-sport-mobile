import "package:flutter/material.dart";
import 'package:psb_sport/data/events.dart';
import 'package:psb_sport/widgets/profile_event.dart';

class ProfileEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
            child: Text("Мои мероприятия",
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0x903c3c3c),
                    fontWeight: FontWeight.w500))),
        SizedBox(height: 15),
        Container(
          height: 300,
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: ProfileEvent(
                    title: events[index].title, date: events[index].date),
              );
            },
          ),
        )
      ],
    ));
  }
}
