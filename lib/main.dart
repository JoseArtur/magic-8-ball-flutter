import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[600],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {setState(() {
           ballnumber = Random().nextInt(4)+2;
        });
        },
        child: Image.asset(
          'images/genie$ballnumber.png',
        ),
      ),
    );
  }
}
