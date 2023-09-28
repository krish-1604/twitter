import 'package:first/splashscreen/splash.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
      routes: {
        '/Signup': (context) => Signup(),
      },
    );
  }
}

void main() {
  runApp(MyApp());
}
