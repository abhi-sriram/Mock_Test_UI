import 'package:flutter/material.dart';

class GeneralInfoPage extends StatelessWidget {
  static const routeName = '/home/drawer/profile/generalinfo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'General info',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
