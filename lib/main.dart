import 'package:flutter/material.dart';
import 'package:opic_app/Script_Page/script.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '모두의 오픽',
      home: Topic_choice(),
    );
  }
}
