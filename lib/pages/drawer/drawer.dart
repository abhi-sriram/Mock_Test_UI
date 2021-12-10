import 'package:all_india_mocktest/pages/auth/signin_page.dart';
import 'package:all_india_mocktest/pages/drawer/contribution_page.dart';
import 'package:all_india_mocktest/pages/drawer/feedback_page.dart';
import 'package:all_india_mocktest/pages/drawer/profile_page.dart';
import 'package:all_india_mocktest/pages/drawer/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: Container(
      color: Colors.white,
      height: 100,
      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/avatar.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Hello User',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(
              CupertinoIcons.home,
              size: 30,
              // color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, ProfilePage.routeName);
            },
            leading: Icon(
              CupertinoIcons.profile_circled,
              size: 30,
              // color: Colors.black,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, SettingsPage.routeName);
            },
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, FeedbackPage.routeName);
            },
            leading: Icon(
              Icons.chat_outlined,
              size: 30,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, ContributionPage.routeName);
            },
            leading: Icon(
              Icons.support,
              size: 30,
            ),
            title: Text(
              'Contribution',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {
                Navigator.popAndPushNamed(context, SigninPage.routeName);
              },
              leading: Icon(
                Icons.power_settings_new,
                size: 30,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
