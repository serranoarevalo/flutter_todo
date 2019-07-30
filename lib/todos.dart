import 'package:flutter/material.dart';
import 'package:flutter_todo/header.dart';

class ToDos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              DefaultTabController(
                length: 2,
                child: Header(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
