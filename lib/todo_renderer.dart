import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_todo/data.dart';
import 'package:flutter_todo/todo.dart';

class ToDoRenderer extends StatelessWidget {
  ToDoRenderer({@required this.toDos});

  final UnmodifiableListView<ToDo> toDos;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this
            .toDos
            .map((toDo) => ToDoComponent(
                payload: toDo.payload, completed: toDo.completed, id: toDo.id))
            .toList(),
      ),
    );
  }
}
