import 'package:flutter/material.dart';
import 'package:flutter_todo/custom_tab.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.only(top: 180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Text(
                  "To Dos",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: TabBar(
                  labelColor: Theme.of(context).accentColor,
                  labelPadding: EdgeInsets.only(bottom: 0),
                  indicatorWeight: 2.5,
                  isScrollable: true,
                  tabs: <Widget>[
                    CustomTab(label: "TO DO"),
                    CustomTab(label: "DONE"),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
