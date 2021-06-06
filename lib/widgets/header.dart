import "package:flutter/material.dart";

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 130,
            child: Image(
              image: AssetImage("assets/images/psb-sport-logo.png"),
              fit: BoxFit.cover,
            )),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {},
                child: Icon(Icons.insert_chart_outlined,
                    color: Color(0x503c3c3c), size: 30)),
            SizedBox(width: 20),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Icon(Icons.account_circle_outlined,
                    color: Color(0x503c3c3c), size: 30))
          ],
        )
      ],
    );
  }
}
