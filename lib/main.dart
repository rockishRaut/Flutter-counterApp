import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Score App",
        home: ScoreHome());
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Score Changer",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restart_alt_rounded), onPressed: reset),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text("Score is",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal)),
          SizedBox(height: 30),
          Text(number.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 130,
                  color: Colors.purple)),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: increaseNumber,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreenAccent[400],
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                  child: Text("Increase",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16))),
              ElevatedButton(
                  onPressed: decreaseNumber,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent[700],
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                  child: Text(
                    "Decrease",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
