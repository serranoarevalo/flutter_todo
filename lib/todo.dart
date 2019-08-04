import 'package:flutter/material.dart';

class ToDoComponent extends StatelessWidget {
  ToDoComponent(
      {@required this.payload, @required this.completed, @required this.id});

  final String payload;
  final bool completed;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: this.completed ? Colors.amberAccent : Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color: this.completed ? Colors.amberAccent : Colors.blueGrey,
                  width: 3),
            ),
          ),
          Text(
            this.payload,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
