import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text('ID'),
                  width: 50,
                ),
                Container(
                  child: Text(' : '),
                  width: 20,
                ),
                Text('毎回同じIDを表示'),
              ],
            ),
            Padding(padding: EdgeInsets.all(10),),
            Row(
              children: <Widget>[
                Container(
                  child: Text('PW'),
                  width: 50,
                ),
                Container(
                  child: Text(' : '),
                  width: 20,
                ),
                Text('毎回同じパスワードを表示'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}