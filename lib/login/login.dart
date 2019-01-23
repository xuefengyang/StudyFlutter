import 'package:flutter/material.dart';
import 'package:flutter_demo/common/CommonResource.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(CommonResource.BACK_COLOR),
        elevation: 0,
        title: Text(
          "登录",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
      backgroundColor: Color(CommonResource.BACK_COLOR),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "请输入你的手机号",
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow,width: 20.0)),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "请输入你的密码",
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 20.0)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 10.0)),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
