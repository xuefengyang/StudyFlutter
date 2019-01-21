import 'package:flutter/material.dart';


class LoginIndexPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(100, 51, 55, 74),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image(image: null)
              ],
            ),
          )
        ],
      ),
    );
  }
}