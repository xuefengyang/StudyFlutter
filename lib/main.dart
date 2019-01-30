import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_demo/list/list_push.dart';
import 'package:flutter_demo/image/network.dart';

final _rowheight = 100.0;
final _boderRadius = BorderRadius.circular(_rowheight / 2);

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ListPage(
                      todos: List.generate(
                          20, (i) => Todo('Todo $i', 'Content of Todo $i')),
                    ))),
        child: Container(
          child: Center(
            child: Text("This is Second Content"),
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowheight,
        child: InkWell(
          borderRadius: _boderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => ImageFromNetWork())),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
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
          title: Text("this is first page"),
        ),
        body: Center(
          child: Category(
            name: "First Page",
            iconLocation: Icons.cake,
            color: Colors.lightBlue,
          ),
        ),
      ),
    ),
  );
}
