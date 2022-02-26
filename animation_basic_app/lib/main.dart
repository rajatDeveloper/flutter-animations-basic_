import 'package:animation_basic_app/screens/home.dart';
import 'package:animation_basic_app/screens/sandBox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Trips',
      home: SafeArea(child: Home()
          // child: SandBox(),
          ),
    );
  }
}
//6 