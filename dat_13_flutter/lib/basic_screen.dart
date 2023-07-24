import 'package:dat_13_flutter/main.dart';
import 'package:flutter/material.dart';

import 'immutable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('My Flutter App'),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: Center(
        child: AspectRatio(aspectRatio: 1.0,child: ImmutableWidget(),),
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.lightBlue,
            child: Center(
              child: Text('Im a drawer'),
            )),
      ),
    );
  }
}
