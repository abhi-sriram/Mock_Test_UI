import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  static const routeName = '/signin-signup/notifications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
