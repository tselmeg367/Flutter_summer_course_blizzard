
import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/pages/Signup_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:lesson_20_flutter/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MaterialApp(
    home: LoginScreen(),
  ));
}
