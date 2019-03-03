import 'package:flutter/material.dart';

class ChildSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xffe5e5e5)
        ),
        child: 
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:TextField(
          autofocus: true,
          style: TextStyle(fontSize: 21),
          decoration: InputDecoration(
              hintText: "Search for News",
              border: InputBorder.none,
              fillColor: Colors.red),
        )) ,
        )
        ;
  }
}
