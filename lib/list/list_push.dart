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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                todo.title,
                style: TextStyle(color: Colors.red,fontSize: 20.0),),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(todo.content),
            ),
            Container(
              color: Colors.blue,
              child: Text(todo.content),
            )
          ],
        ),
      ),
    );
  }
}
