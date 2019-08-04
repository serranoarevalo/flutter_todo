import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      right: 0,
      child: Container(
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Ionicons.getIconData("ios-add"),
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
