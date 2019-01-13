import 'package:flutter/material.dart';

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            "hello",
            style: TextStyle(fontSize: 40.0,color: Colors.white),
          ),
        ),
      ),
    );
  }
}

final _rowheight = 10.0;
final _boderRadius = BorderRadius.circular(_rowheight / 2);

class Category extends StatelessWidget {

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  }) : assert(name != null),
       assert(color != null),
       assert(iconLocation != null),
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _rowheight,
      child: InkWell(
        borderRadius: _boderRadius,
        highlightColor: color,
        splashColor: color,
        onTap: () {
          print("I was tapped");
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Rectangle"),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}
