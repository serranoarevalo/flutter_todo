import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDo {
  final String payload;
  final bool completed;
  final int id;
  ToDo(this.payload, this.completed, this.id);
}

class ToDoModel extends ChangeNotifier {
  List<ToDo> toDosList = [];

  List<ToDo> get pendingToDos =>
      toDosList.where((toDo) => !toDo.completed).toList()
        ..sort((toDo, aToDo) => toDo.id - aToDo.id);

  List<ToDo> get completedToDos =>
      toDosList.where((toDo) => toDo.completed).toList()
        ..sort((toDo, aToDo) => toDo.id - aToDo.id);

  void move(ToDo item) {
    final newToDo = ToDo(item.payload, !item.completed, item.id);
    toDosList.remove(item);
    toDosList.add(newToDo);
    notifyListeners();
  }

  ToDoModel() {
    print("Model Initialized");
  }
}
