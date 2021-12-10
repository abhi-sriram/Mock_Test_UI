import 'package:flutter/material.dart';

class CompletedExamsPage extends StatelessWidget {
  static const routeName = '/home/generalinfo/completedexams';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
      'Completed exams',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
      ),
    );
  }
}