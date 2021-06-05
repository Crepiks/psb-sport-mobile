import "package:flutter/material.dart";

class EventCard extends StatelessWidget {
  final String title;
  final String description;
  final String dateTime;
  final int duration;
  final String imagePath;

  const EventCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.dateTime,
      required this.duration,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: NetworkImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  )),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF3c3c3c),
                                fontWeight: FontWeight.w600)),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(description,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0x903c3c3c))),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconText(
                              icon: Icons.supervisor_account,
                              text: "11",
                              color: Color(0x70E95516)),
                          IconText(
                              icon: Icons.calendar_today_rounded,
                              text: "29 июня",
                              color: Color(0x70E95516)),
                          IconText(
                              icon: Icons.check_circle_outline_rounded,
                              text: "Есть места",
                              color: Color(0xFF27AE60)),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]));
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const IconText(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color, size: 22),
        SizedBox(width: 3),
        Text(text,
            style: TextStyle(
                color: color, fontSize: 11, fontWeight: FontWeight.w500))
      ],
    ));
  }
}
