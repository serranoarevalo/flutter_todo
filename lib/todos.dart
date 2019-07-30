import 'package:flutter/material.dart';
import 'package:flutter_todo/add_button.dart';
import 'package:flutter_todo/header.dart';

class ToDos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Stack(
            children: <Widget>[
              DefaultTabController(
                length: 2,
                child: Header(),
              ),
              AddButton()
            ],
          ),
        ),
      ),
    );
  }
}
