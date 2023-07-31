import 'package:day_15_flutter/flex_screen.dart';
import 'package:day_15_flutter/stop_watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: StopwatchApp(),
    ),
  ));
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StopWatch();
  }
}
