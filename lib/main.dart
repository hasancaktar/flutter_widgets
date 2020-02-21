import 'package:flutter/material.dart';
import 'package:flutter_tasaeim/aramasayfasi.dart';
import 'package:flutter_tasaeim/drawer_menu.dart';
import 'package:flutter_tasaeim/kisisel_font.dart';
import 'package:flutter_tasaeim/page_view.dart';
import 'package:flutter_tasaeim/tab_ornek.dart';

import 'anasayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenu = 0;
  AnaSayfa sayfaAna;
  AramaSayfasi sayfaArama;
  List<Widget> tumSayfalar;
  PageViewSayfasi pageViewSayfasi;

  var keyAnasayfa = PageStorageKey("key_ana_sayfa");
  var keyAramaSayfa = PageStorageKey("key_arama_sayfa");

  @override
  void initState() {
    sayfaAna = AnaSayfa(keyAnasayfa);
    sayfaArama = AramaSayfasi(keyAramaSayfa);
    pageViewSayfasi = PageViewSayfasi();
    super.initState();
    tumSayfalar = [sayfaAna, sayfaArama, pageViewSayfasi];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(),
      body: secilenMenu <= tumSayfalar.length - 1
          ? tumSayfalar[secilenMenu]
          : tumSayfalar[0],
      bottomNavigationBar: Theme(
        data: ThemeData(
            canvasColor: Colors.teal, primaryColor: Colors.deepPurple),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Ana Sayfa"),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Ara"),
                activeIcon: Icon(Icons.closed_caption),
                backgroundColor: Colors.brown),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("Kullanıcı"),
                backgroundColor: Colors.deepPurpleAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app),
                title: Text("Çıkış"),
                backgroundColor: Colors.teal),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: secilenMenu,
          onTap: (index) {
            setState(() {
              secilenMenu = index;
              if (index == 3) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TabOrnek()))
                    .then((bb) {
                  secilenMenu = 0;
                });
              }
            });
          },
        ),
      ),
    );
  }
}
