import 'package:all_india_mocktest/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/home/drawer/settings';

  AppBar appBar = AppBar(
    title: Text(
      'Settings',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
  );
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar,
      body: ListView(
        children: [
          Container(
            height: media.height -
                MediaQuery.of(context).padding.top -
                appBar.preferredSize.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                listTileWidget(
                  iconData: Icons.account_circle,
                  title: 'Account',
                  onpressed: () {},
                ),
                listTileWidget(
                  iconData: Icons.notification_important,
                  title: 'Notifications',
                  onpressed: () {},
                ),
                listTileWidget(
                  iconData: Icons.visibility,
                  title: 'Appearence',
                  onpressed: () {},
                ),
                listTileWidget(
                  iconData: Icons.lock,
                  title: 'Privacy and Security',
                  onpressed: () {},
                ),
                listTileWidget(
                  iconData: Icons.group,
                  title: 'About us',
                  onpressed: () {},
                ),
                listTileWidget(
                  iconData: Icons.help,
                  title: 'Help and Support',
                  onpressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
