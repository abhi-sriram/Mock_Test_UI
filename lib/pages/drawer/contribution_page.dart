import 'package:flutter/material.dart';

class ContributionPage extends StatelessWidget {
  static const routeName = '/home/drawer/contribution';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contribution',
          style: TextStyle(
            color: Colors.black,
          ),
        ),),
    );
  }
}