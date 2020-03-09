import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(),
      ),
    );
  }
}

class MobName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          MobTitle('Aboleth'),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Four long tentacles writhe from this three-eyed fish-like creature’s flanks, and its green body glistens with thick, clear slime.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Separator(),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.center,
              child: StatsWidget(18, 9, 15, 18, 15, 18),
            ),
          ),
        ],
      ),
    );
  }
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 1,
            color: Colors.black87,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          ),
        )
      ],
    );
  }
}