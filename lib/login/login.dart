import 'package:flutter/material.dart';
import 'package:flutter_demo/common/CommonResource.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffff),
        elevation: 0,
        title: Text(
          "登录",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          TextField(
//            decoration: InputDecoration(
//              hintText: "请输入你的手机号",
//              hintStyle: TextStyle(color: Colors.white),
//              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow,width: 20.0)),
//            ),
//            keyboardType: TextInputType.number,
//          ),
//          TextField(
//            decoration: InputDecoration(
//              hintText: "请输入你的密码",
//              hintStyle: TextStyle(color: Colors.white),
//              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 20.0)),
//              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 10.0)),
//            ),
//            keyboardType: TextInputType.number,
//          ),
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
