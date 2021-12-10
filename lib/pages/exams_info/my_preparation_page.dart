import 'package:flutter/material.dart';

class MyPreparationPage extends StatelessWidget {
  static const routeName = '/home/generalinfo/mypreparation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
      'My preparation',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
      ),
    );
  }
}