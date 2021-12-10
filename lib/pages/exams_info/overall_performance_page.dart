import 'package:flutter/material.dart';

class OverallPerformancePage extends StatelessWidget {
  static const routeName = '/home/generalinfo/overallperformance';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
      'Overall performance',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
      ),
    );
  }
}