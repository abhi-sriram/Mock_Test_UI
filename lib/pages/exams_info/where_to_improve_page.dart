import 'package:flutter/material.dart';

class WhereToImprovePage extends StatelessWidget {
  static const routeName = '/home/generalinfo/wheretoimprove';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Where to improve',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
