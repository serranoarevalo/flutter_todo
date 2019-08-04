import 'dart:collection';

import 'package:flutter/foundation.dart';

class ToDo {
  final String payload;
  final bool completed;
  ToDo(this.payload, this.completed);
}

class ToDoModel extends ChangeNotifier {
  final List<ToDo> todosList = [
    ToDo("Do 80 pushups", false),
    ToDo("Take shower", false),
    ToDo("Finish Avante", false),
  ];

  UnmodifiableListView<ToDo> get pendingToDos => UnmodifiableListView(
        todosList.where((toDo) => !toDo.completed).toList(),
      );

  UnmodifiableListView<ToDo> get completedToDos => UnmodifiableListView(
        todosList.where((toDo) => toDo.completed).toList(),
      );
}
