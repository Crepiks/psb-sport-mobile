import "package:flutter/material.dart";
import 'package:psb_sport/widgets/profile_events.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_rounded,
                            size: 26, color: Color(0xFF2B2D83)),
                        SizedBox(width: 8),
                        Text("Назад",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF2B2D83)))
                      ]),
                  GestureDetector(
                      child: Icon(Icons.shopping_cart_outlined,
                          size: 30, color: Color(0xff2B2D83)))
                ]),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                child: CircleAvatar(
                    backgroundColor: Color(0x902B2D83),
                    backgroundImage: NetworkImage(
                        "http://pngimg.com/uploads/baseball/baseball_PNG18978.png")),
              ),
              SizedBox(height: 10),
              Text("Кажимухан Азат",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFF3c3c3c),
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text("Команда «‎Бананы»",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0x803c3c3c),
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 30),
              Text("Бонусов: 340",
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFE95516),
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 30),
          ProfileEvents(),
        ],
      ),
    )));
  }
}
