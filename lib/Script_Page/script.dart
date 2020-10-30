import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Topic_choice extends StatefulWidget {
  @override
  _Topic_choiceState createState() => _Topic_choiceState();
}

class _Topic_choiceState extends State<Topic_choice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
        '모두의 오픽',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/bgImg.PNG'),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '스크립트를 추가하세요',
                  style: TextStyle(fontSize: 24),
                ),
                FlatButton(
                  child: Text(
                    '스크립트 추가',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 400.0, 0.0, 0.0),
            child: Text(
              '주제 별 토픽',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: GridView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  color: Colors.grey,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Image.asset('name'),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text('$index Title'),
                          subtitle: Text('$index Sub Title'),
                        ),
                      ),
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
