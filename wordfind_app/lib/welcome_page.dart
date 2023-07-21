import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GradientText('GAME', 31),
      ),
    );
  }
}
