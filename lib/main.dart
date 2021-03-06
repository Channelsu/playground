import 'package:flutter/material.dart';
import 'package:playground/detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> titles = ['Amazon', '楽天', 'Yahoo!'];

  void _titleAdd() {
    titles.add('Google');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('パスワード管理'),
      ),
      // body: ListView(
      //   children: <Widget>[
      //     ListTile(
      //       leading: Icon(Icons.vpn_key),
      //       title: Text(titles[0]),
      //     ),
      //     Divider(),
      //     ListTile(
      //       leading: Icon(Icons.vpn_key),
      //       title: Text(titles[1]),
      //     ),
      //     Divider(),
      //     ListTile(
      //       leading: Icon(Icons.vpn_key),
      //       title: Text(titles[2]),
      //     ),
      //     Divider(),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int idx) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text(titles[idx]),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // 画面遷移
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailPage(titles[idx])
                  ));
                },
              ),
              Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _titleAdd,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
