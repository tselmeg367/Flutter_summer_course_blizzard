import 'package:flutter/material.dart';
import 'package:lesson_day_23_flutter/screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
