import 'package:flutter/material.dart';

class UpcommingExamsPage extends StatelessWidget {
  static const routeName = '/home/generalinfo/upcommingexams';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
      'Upcomming exams',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
      ),
    );
  }
}