import 'package:flutter/material.dart';

class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모두의 오픽'),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/study.webp'),
        ],
      ),
    );
  }
}
