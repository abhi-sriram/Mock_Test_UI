import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/home/drawer/profile/aboutus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About us',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(25),
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: Colors.blueGrey[100],
          //   ),
          //   borderRadius: BorderRadius.circular(10),
          // ),
          child: Text(
            '''Who doesn't want to do best in their exams? Everybody does. An assessment to know where you stand, analyze, and improve is all you need to crack those exams. This platform is a one-stop destination for all kinds of mock entrance examinations like UPSC, GATE, GRE, and many more with a live leaderboard ranking, unlimited mock test papers to attempt and help you learn your mistakes bringing you one step closer to success.''',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color: Colors.blueGrey,
              letterSpacing: 0.8,
            ),
            softWrap: true,
          ),
        ),
      ),
    );
  }
}
