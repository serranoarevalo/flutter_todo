import 'package:flutter/material.dart';
import 'package:flutter_todo/add_button.dart';
import 'package:flutter_todo/data.dart';
import 'package:flutter_todo/todos.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Color(0xff00D4EE),
          textTheme: TextTheme(
            body1: TextStyle(
              color: Color(0xff656B6E),
            ),
          ),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent),
      home: ChangeNotifierProvider(
        builder: (context) => ToDoModel(),
        child: ToDos(),
      ),
    );
  }
}
