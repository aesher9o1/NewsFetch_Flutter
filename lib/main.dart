import 'package:flutter/material.dart';
import 'news.dart';
import 'childSearch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: new Color(0xffffff),
          title: Row(
            children: <Widget>[
              Text("NewsFetch",
                  style: new TextStyle(fontFamily: "Nunito", fontSize: 30)),
              Spacer(),
              IconButton(
                icon: new Icon(Icons.apps),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: <Widget>[ChildSearch(), News()],
          ),
        ));
  }
}
