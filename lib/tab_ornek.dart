import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar Kullanımı"),
        bottom: Tabbarim(),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Container(
            color: Colors.green,
            child: Center(
                child: Text(
              "Tab 1",
              style: TextStyle(fontSize: 44),
            )),
          ),
          Container(
            color: Colors.green,
            child: Center(
                child: Text(
                  "Tab 2",
                  style: TextStyle(fontSize: 44),
                )),
          ),
          Container(
            color: Colors.green,
            child: Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(fontSize: 44),
                )),
          )
        ],
      ),
    );
  }

  TabBar Tabbarim() {
    return TabBar(controller: tabController, tabs: [
      Tab(
        icon: Icon(Icons.event_seat),
        text: "Birinci",
      ),
      Tab(
        icon: Icon(Icons.event_seat),
        text: "İkinci",
      ),
      Tab(
        icon: Icon(Icons.event_seat),
        text: "Üçüncü",
      ),
    ]);
  }
}
