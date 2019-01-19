import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String content;

  Todo(this.title, this.content);
}

class ListPage extends StatelessWidget {
  final List<Todo> todos;

  // dart constructor
  ListPage({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          todo: todos[index],
                        ))),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Todo todo;

  DetailPage({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Container(
          height: 500.0,
          width: 100.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RowLayout())),
                    child: Text(
                      todo.title,
                      style: TextStyle(color: Colors.red, fontSize: 20.0),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    todo.content,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                  child: Text(todo.content),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final double fontSize = 30.0;

class RowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowLayout"),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 10,color: Colors.red,style: BorderStyle.solid)
              ),
              height: 100.0,
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Center(
                child: GestureDetector(
                  onDoubleTap: () => print("double click"),
                  onLongPress: () => print("Long Press"),
                  onHorizontalDragStart: (dragStartDetail) => print(dragStartDetail.globalPosition.dx),
                  onHorizontalDragUpdate: (dragUpdateDetail) => print(dragUpdateDetail.globalPosition.dx),
                  child: Text(
                    "Center Text",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontSize: fontSize),
                  ),
                ),
              ),
            ),
          ),Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 10,color: Colors.red,style: BorderStyle.solid)
              ),
              height: 100.0,
              margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Center(
                child: Text(
                  "Center Text",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: fontSize),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
