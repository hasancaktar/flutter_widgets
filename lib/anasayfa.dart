import 'package:flutter/material.dart';
import 'package:flutter_tasaeim/models/veri.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Veri> tumVeriler;

  @override
  void initState() {
    tumVeriler = [
      Veri("Biz Kimiz", false, "Biz kimizin içeriği buraya gelecek"),
      Veri("Biz Neredeyiz", false, "Biz neredeyiz içeriği buraya gelecek"),
      Veri("Vizyon", false, "Vizyon içeriği buraya gelecek"),
      Veri("Misyon", false, "Misyon içeriği buraya gelecek"),
      Veri("Biz Kimiz", false, "Biz kimizin içeriği buraya gelecek"),
      Veri("Biz Kimiz", false, "Biz kimizin içeriği buraya gelecek"),
      Veri("Biz Kimiz", false, "Biz kimizin içeriği buraya gelecek"),
      Veri("Biz Kimiz", false, "Biz kimizin içeriği buraya gelecek"),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumVeriler[index].baslik),
          initiallyExpanded: tumVeriler[index].expanded,
          children: <Widget>[
            Container(
              color:
                  index % 2 == 0 ? Colors.cyan.shade200 : Colors.red.shade200,
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(tumVeriler[index].icerik),
              ),
            )
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
