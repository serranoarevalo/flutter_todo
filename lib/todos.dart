import 'package:flutter/material.dart';
import 'package:flutter_todo/add_button.dart';
import 'package:flutter_todo/data.dart';
import 'package:flutter_todo/header.dart';
import 'package:flutter_todo/todo.dart';
import 'package:flutter_todo/todo_renderer.dart';
import 'package:provider/provider.dart';

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
                    child: Consumer<ToDoModel>(
                      builder: (context, toDos, child) => TabBarView(
                        children: <Widget>[
                          ToDoRenderer(
                            toDos: toDos.pendingToDos,
                          ),
                          ToDoRenderer(
                            toDos: toDos.completedToDos,
                          )
                        ],
                      ),
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
