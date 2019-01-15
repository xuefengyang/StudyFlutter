import 'package:flutter/material.dart';

class MyCustomLayout extends Container {
  @override
    Widget build(BuildContext context) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("row1"),
          Text("row2")
        ],
      );
    }
}