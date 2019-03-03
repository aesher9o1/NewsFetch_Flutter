import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class News extends StatelessWidget {
  var _urlTopNews = "https://hacker-news.firebaseio.com/v0/topstories.json";

  @override
  Widget build(BuildContext context) {
    Future<List<String>> _getTopNews() async {
      List<String> topStoriesID = [];
      var topNews = await http.get(_urlTopNews);
      var jsonData = json.decode(topNews.body);


      print(jsonData);    
      for (var stories in jsonData) topStoriesID.add(stories.toString());

      return topStoriesID;
    }

    return Container(
        child: Expanded(
      child: FutureBuilder(
        future: _getTopNews(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
                child: Center(
              child: Text("Loading Data"),
            ));
          }

          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(""+snapshot.data[index]),
              );
            },
          );
        },
      ),
    ));
  }
}
