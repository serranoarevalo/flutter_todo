import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 180),
        child: Text(
          "To Dos",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
