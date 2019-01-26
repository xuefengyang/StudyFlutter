import 'package:flutter/material.dart';


class WrapBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar:AppBar(
        title: Text(
          "Wrap Box"
        ),
      ),
      body: Wrap(
        spacing: 4.0,
        runSpacing: -10,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH',maxLines: 1,overflow: TextOverflow.clip,)),
            label: Text('Hamilton'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.redAccent,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
            label: Text('Lafayette'),
            labelPadding: EdgeInsets.all(0),
          ),Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM',maxLines: 1,overflow: TextOverflow.clip,textAlign: TextAlign.center,)),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligan'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('Mulligansdfasdfas'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('111'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('111'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('111'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('')),
            label: Text('111asdfasfasf'),
            labelPadding: EdgeInsets.all(0),
            backgroundColor: Colors.lightGreen,
          ),
        ],
      ),
    );
  }
}