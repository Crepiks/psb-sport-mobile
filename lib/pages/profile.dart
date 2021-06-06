import "package:flutter/material.dart";

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_rounded,
                    size: 26, color: Color(0xFF2B2D83)),
                SizedBox(width: 5),
                Text("Назад",
                    style: TextStyle(fontSize: 12, color: Color(0xFF2B2D83)))
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://pngimg.com/uploads/baseball/baseball_PNG18978.png")),
              Text("Кажимухан Азат",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF3c3c3c),
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text("IOS разработчик",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF3c3c3c),
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 15),
              Text("Бонусов: 340",
                  style: TextStyle(
                      fontSize: 26,
                      color: Color(0xFFE95516),
                      fontWeight: FontWeight.w600)),
            ],
          ),
          SizedBox(height: 30),
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0x502B2D83),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("Мероприятия")),
        ],
      ),
    )));
  }
}
