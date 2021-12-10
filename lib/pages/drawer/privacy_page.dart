import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  static const routeName = '/home/drawer/profile/privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
      'Privacy',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
      ),
    );
  }
}