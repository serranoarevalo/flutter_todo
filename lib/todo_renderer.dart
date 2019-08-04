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
      child: Column(
        children: this
            .toDos
            .map((toDo) => ToDoComponent(text: toDo.payload))
            .toList(),
      ),
    );
  }
}
