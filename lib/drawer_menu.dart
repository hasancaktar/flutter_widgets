import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Hasan"),
            accountEmail: Text("lordhasan@gmail.com"),
            currentAccountPicture: Image.asset("assets/a.png"),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text("SH"),
              ),
              CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text("HS"),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Ana Sayfa"),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("Ara"),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text("Mesaj"),
                  trailing: Icon(Icons.arrow_right),
                ),
                Divider(),
                InkWell(
                    splashColor: Colors.indigo,
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text("Ara"),
                      trailing: Icon(Icons.arrow_right),
                    )),
                AboutListTile(
                  child: Text("Hakkımızda"),
                  applicationIcon: Icon(Icons.info_outline),
                  applicationName: "Flutter dersleri",
                  applicationLegalese: "Biz buyuz",
                  applicationVersion: "2.2",
                  icon: Icon(Icons.info),
                  aboutBoxChildren: <Widget>[Text("child1"), Text("Child2")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
