import 'package:flutter/material.dart';

class AramaSayfasi extends StatelessWidget {
  AramaSayfasi(Key k) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 300,
        itemExtent: 200,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Material(
              elevation: 15,
              color: index % 2 == 0 ? Colors.blue : Colors.cyan,
              borderRadius: BorderRadius.circular(10),
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        });
  }
}
