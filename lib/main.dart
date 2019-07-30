import 'package:flutter/material.dart';
import 'package:flutter_todo/todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Color(0xff00D4EE),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent),
      home: ToDos(),
    );
  }
}
