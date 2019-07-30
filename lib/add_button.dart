import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      right: 0,
      child: Container(
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
