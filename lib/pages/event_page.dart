import "package:flutter/material.dart";

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back_rounded,
                          size: 26, color: Color(0xFF2B2D83)),
                      SizedBox(width: 8),
                      Text("Назад",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF2B2D83)))
                    ]),
              ),
              Container(
                child: Stack(alignment: Alignment(-1, -1), children: [
                  Container(
                      height: 300,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0x103c3c3c),
                            spreadRadius: 1,
                            blurRadius: 20)
                      ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(
                              "https://cdni.rt.com/russian/images/2017.05/article/591fe2f6c3618802048b45f5.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                ]),
              ),
            ]),
      ]),
      // Container(
      //   height: 300,
      //   decoration: BoxDecoration(
      //       color: Colors.green[100],
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(20),
      //           topRight: Radius.circular(20))),
      // )
    )));
  }
}
