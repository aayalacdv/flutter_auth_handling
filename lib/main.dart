import 'package:auth_project/constants.dart';
import 'package:auth_project/screens/auth_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await (kIsWeb
      ? Firebase.initializeApp(options: Constants.firebaseOptions)
      : Firebase.initializeApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Auth test'),
        ),
        body: AuthScreen(),
      ),
    );
  }
}
