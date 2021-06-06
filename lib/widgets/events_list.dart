import "package:flutter/material.dart";
import "package:psb_sport/data/events.dart";
import 'package:psb_sport/widgets/event_card.dart';

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/event');
                },
                              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: EventCard(
                      title: events[index].title,
                      description: events[index].description,
                      dateTime: events[index].date,
                      duration: events[index].duration,
                      imagePath: events[index].imagePath),
                ),
              );
            }));
  }
}
