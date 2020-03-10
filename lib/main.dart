import 'dart:ui';
import 'dart:convert';

import 'Mob.dart';
import 'topSection.dart';
import 'statsSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Mob> mobsArray;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 39, 37, 33),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TopBar(),
                MainStatsWidget(),
                Separator(),
                DescriptionWidget(),
                Separator(),
                SecondaryStatsWidget(),
                Separator(),
              ],
            ),
          )),
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

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 10,
      ),
      child: Text(
        "Four long tentacles writhe from this three-eyed fish-like creature's f lanks, and its green body glistens with thick, clear slime.",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

class parseMobsJson(){
  
}