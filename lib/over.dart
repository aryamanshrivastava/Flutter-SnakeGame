// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'game.dart';

class GameOver extends StatelessWidget {
  final int score;

  const GameOver({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Game Over',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,)),
          SizedBox(height: 50.0),
          Text('Your Score is: $score',
              style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 50.0),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.refresh, color: Colors.white, size: 30.0),
              label: Text("Try Again",
                  style: TextStyle(color: Colors.white, fontSize: 20.0))),
        ],
      ),
    ));
  }
}
