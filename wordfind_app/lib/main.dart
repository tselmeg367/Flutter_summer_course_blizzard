import 'package:flutter/material.dart';
import 'package:wordfind_app/welcome_page.dart';

void main() {
  print('World Find Game');
  MaterialApp myApp = MaterialApp(
    title: 'world find game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: Scaffold(
      body: Center(
        child: WelcomePage(),
      ),
    ),
  );
  runApp(myApp);
}
