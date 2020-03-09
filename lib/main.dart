import 'dart:ui';
import 'TopSection.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 37, 33),
        body: Column(
          children: <Widget>[TopBar(), MainStatsWidget()],
        ),
      ),
    );
  }
}

class MainStatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext builder) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stat('STR', 18),
              Stat('DEX', 9),
              Stat('CON', 15),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stat('INT', 18),
              Stat('WIS', 15),
              Stat('CHA', 18),
            ],
          ),
        ],
      ),
    );
  }
}

class Stat extends StatelessWidget {
  final String type;
  final int value;

  String calculateModifier() {
    double mod = (this.value - 10) / 2;
    if (mod >= 0)
      return "+${mod.toInt()}";
    else
      return "-${mod.round()}";
  }

  Stat(this.type, this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Image.asset('assets/images/list_point.png'),
          ),
          Text(
            '${this.type}: ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${this.value} (${calculateModifier()})',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
