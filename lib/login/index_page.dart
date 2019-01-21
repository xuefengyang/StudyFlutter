import 'package:flutter/material.dart';


class LoginIndexPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(100, 51, 55, 74),
      child: Column(
        children: <Widget>[
          Expanded(
            flex:53,
            child: Container(
              margin: EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image(image: null)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                InkWell(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    height: 44.0,
                    child: Text("登录"),
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 8, 30, 0),
                    height: 44.0,
                    child: Text("注册"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}