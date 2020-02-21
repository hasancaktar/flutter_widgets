import 'package:flutter/material.dart';

class PageViewSayfasi extends StatefulWidget {
  @override
  _PageViewSayfasiState createState() => _PageViewSayfasiState();
}

class _PageViewSayfasiState extends State<PageViewSayfasi> {
  var myController =
      PageController(initialPage: 1, keepPage: true, viewportFraction: 1);
  bool yatayEksen = false;
  bool pageSnapping = false;
  bool reverseSira = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            reverse: reverseSira,
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("index $index");
            },
            children: <Widget>[
              Container(
                color: Colors.blue.shade400,
                width: double.infinity,
                height: 300,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text(
                      "Sayfa 0",
                      style: TextStyle(fontSize: 50),
                    ),
                    RaisedButton(child: Text("buton"),onPressed: (){myController.jumpToPage(2);},),
                  ],
                )),
              ),
              Container(
                color: Colors.red.shade400,
                width: double.infinity,
                height: 300,
                child: Center(
                    child: Text(
                  "Sayfa 1",
                  style: TextStyle(fontSize: 50),
                )),
              ),
              Container(
                color: Colors.green.shade400,
                width: double.infinity,
                height: 300,
                child: Center(
                    child: Text(
                  "Sayfa 2",
                  style: TextStyle(fontSize: 50),
                )),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.brown,
          width: double.infinity,
          height: 300,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text("Yatay Eksende Çalış"),
                    Checkbox(
                      value: yatayEksen,
                      onChanged: (b) {
                        setState(() {
                          yatayEksen = b;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text("PageSnapping"),
                    Checkbox(
                      value: pageSnapping,
                      onChanged: (b) {
                        setState(() {
                          pageSnapping = b;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text("PageSnapping"),
                    Checkbox(
                      value: reverseSira,
                      onChanged: (b) {
                        setState(() {
                          reverseSira = b;
                        });
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
