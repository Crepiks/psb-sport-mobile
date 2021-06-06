import "package:flutter/material.dart";

class ProfileEvent extends StatelessWidget {
  final String title;
  final String date;

  const ProfileEvent({Key? key, required this.title, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0x802B2D83), width: 1),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0x802B2D83),
                          fontWeight: FontWeight.w500)),
                  SizedBox(width: 15),
                  Text('Прошло',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0x602B2D83),
                      )),
                ],
              ),
              Icon(Icons.navigate_next_rounded,
                  size: 30, color: Color(0x802B2D83))
            ],
          )),
    );
  }
}
