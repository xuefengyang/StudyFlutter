import 'package:flutter/material.dart';

class ShadowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffff),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 200.0,
            margin: EdgeInsets.fromLTRB(16, 16,16,16),
            child: Center(
              child: Text("Box Shadow",style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              )),
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: <BoxShadow> [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0,5),
                  blurRadius: 10,
                  spreadRadius: 2.0
                )
              ],
            ),
          ),
          Container(
            height: 200.0,
            margin: EdgeInsets.fromLTRB(16, 16,16,16),
            child: Center(
              child: Text("Box Shadow",style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
              )),
            ),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: <BoxShadow> [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0,5),
                    blurRadius: 10,
                    spreadRadius: 2.0
                )
              ],
            ),
          ),
          Container(
            height: 200.0,
            margin: EdgeInsets.fromLTRB(16, 16,16,16),
            child: Center(
              child: Text("Box Shadow",style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
              )),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: <BoxShadow> [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0,5),
                    blurRadius: 10,
                    spreadRadius: 2.0
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
