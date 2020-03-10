import 'dart:ui';
import 'topSection.dart';
import 'statsSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 37, 33),
        body: Column(
          children: <Widget>[
            TopBar(),
            MainStatsWidget(),
            Separator(),
          ],
        ),
      ),
    );
  }
}


class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(22),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 220, 36, 48),
            Color.fromARGB(255, 150, 68, 191)
          ],
        ),
      ),
    );
  }
}
