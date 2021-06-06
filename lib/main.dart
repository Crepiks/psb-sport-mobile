import "package:flutter/material.dart";
import 'package:psb_sport/pages/event_page.dart';
import "package:psb_sport/pages/events_page.dart";
import 'package:psb_sport/pages/profile.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "ПСБ Спорт", initialRoute: '/', routes: {
      '/': (context) => EventsPage(),
      '/event': (context) => EventPage(),
      '/profile': (context) => Profile(),
    });
  }
}
