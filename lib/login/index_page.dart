import 'package:flutter/material.dart';
import 'package:flutter_demo/login/login.dart';


class LoginIndexPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF33374A),
      child: Column(
        children: <Widget>[
          Expanded(
            flex:53,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset("assets/images/login_logo.png",width: 147.0,height: 147.0),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      highlightColor: Colors.white70,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
                      child: Container(
                        height: 44.0,
                        child: Center(
                          child: Text("登录",style: TextStyle(color: Color(0xFF9544FF),fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    color: Color(0xFF4C4F67),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      highlightColor: Color(0xFF3D4055),
                      onTap: () => print("ss"),
                      child: Container(
                        height: 44.0,
                        child: Center(
                          child: Text("注册",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}