
import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/home_screen.dart';
import 'package:lesson_20_flutter/pages/Signup_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:lesson_20_flutter/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp( MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      textTheme: Typography().white.apply(fontFamily: 'Rubik')
    ),
    home: const LoginScreen(),
  ));
}
