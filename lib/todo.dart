import 'package:flutter/material.dart';

class ToDoComponent extends StatelessWidget {
  ToDoComponent({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.text),
    );
  }
}
