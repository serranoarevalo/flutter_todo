import 'package:flutter/material.dart';
import 'package:flutter_todo/data.dart';
import 'package:provider/provider.dart';

class ToDoComponent extends StatelessWidget {
  ToDoComponent({@required this.toDo});

  final ToDo toDo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Provider.of<ToDoModel>(context, listen: false).move(this.toDo);
            },
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: this.toDo.completed
                    ? Colors.amberAccent
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: this.toDo.completed
                        ? Colors.amberAccent
                        : Colors.blueGrey,
                    width: 3),
              ),
            ),
          ),
          Text(
            this.toDo.payload,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
