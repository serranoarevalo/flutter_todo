import 'dart:collection';

import 'package:flutter/foundation.dart';

class ToDo {
  final String payload;
  final bool completed;
  final int id;
  ToDo(this.payload, this.completed, this.id);
}

class ToDoModel extends ChangeNotifier {
  final List<ToDo> todosList = [
    ToDo("Order breakfast for Lynn", true, 0),
    ToDo("Do 80 pushups", false, 1),
    ToDo("Take shower", false, 2),
    ToDo("Finish Avante", false, 3),
  ];

  UnmodifiableListView<ToDo> get pendingToDos => UnmodifiableListView(
        todosList.where((toDo) => !toDo.completed).toList(),
      );

  UnmodifiableListView<ToDo> get completedToDos => UnmodifiableListView(
        todosList.where((toDo) => toDo.completed).toList(),
      );
}
