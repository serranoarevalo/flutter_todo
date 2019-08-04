import 'package:flutter/material.dart';
import 'package:flutter_todo/add_button.dart';
import 'package:flutter_todo/header.dart';

class ToDos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DefaultTabController(
          length: 2,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Header(),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          child: Text("hi"),
                        ),
                        Container(
                          child: Text("hi"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              AddButton()
            ],
          ),
        ),
      ),
    );
  }
}
