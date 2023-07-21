import 'package:flutter/material.dart';

void main() {
  print('Day 11 Flutter application');

  const MaterialApp myApp = MaterialApp(
      home: Center(
    child: Text(
      'hello blizzard',
      style: TextStyle(color: Color(0xFFFFFF), fontSize: 30),
    ),
  ));
  MaterialApp myNextApp = MaterialApp(
      title: 'World find game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello bilzzard',
            style: TextStyle(fontSize: 24, color: Color(0x3f55a6FF)),
          ),
        ),
      ));
  final MyNiceApp temuujin = MyNiceApp();
  runApp(temuujin);
}

class MyNiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My nice app'),
        ),
        body: Container(
          child: Center(
            child: Text(
              'Hello Bilzzard',
              style: TextStyle(
                fontFamily: 'Ribeye',
                fontSize: 50,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset(
            'assets/assets.jpeg',
            width: 200,
          ),
        ),
      ),
    );
  }
}
