import 'dart:ui';
import 'TopSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  /*
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  */
  runApp(MyApp());
}

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
  final String list_point_path = 'assets/images/list_point.png';
  final String heart_icon_path = 'assets/images/heart_icon.png';
  final String ac_icon_path = 'assets/images/ac_icon.png';
  final String speed_icon_path = 'assets/images/speed_icon.png';

  @override
  Widget build(BuildContext builder) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              right: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stat('STR', 18, list_point_path),
                Stat('DEX', 9, list_point_path),
                Stat('CON', 15, list_point_path),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 8,
              right: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stat('INT', 18, list_point_path),
                Stat('WIS', 15, list_point_path),
                Stat('CHA', 18, list_point_path),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 8,
              right: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stat.withData('HP', '84 (8d8+48)', heart_icon_path),
                Stat('AC', 17, ac_icon_path),
                Stat.withData('SPEED', '10ft.,\nswim 40ft.', speed_icon_path),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Stat extends StatelessWidget {
  String type;
  int value;
  String image_path;
  String data;

  String calculateModifier() {
    double mod = (this.value - 10) / 2;
    if (mod >= 0)
      return "+${mod.toInt()}";
    else
      return "${mod.round()}";
  }

  Stat(this.type, this.value, this.image_path);
  Stat.withData(this.type, this.data, this.image_path);
  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Image.asset('${image_path}'),
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
            this.value != null
                ? '${this.value} (${calculateModifier()})'
                : '${this.data}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          )
        ],
    );
  }
}
