
import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/pages/Signup_screen.dart';

import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MaterialApp(
    home: SignUp(),
  ));
}
