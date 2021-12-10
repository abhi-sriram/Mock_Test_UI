import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  static const routeName = '/home/drawer/feedback';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedback',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
