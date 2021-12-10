import 'package:all_india_mocktest/pages/auth/signin_page.dart';
import 'package:all_india_mocktest/pages/drawer/about_us_page.dart';
import 'package:all_india_mocktest/pages/drawer/general_info_page.dart';
import 'package:all_india_mocktest/pages/drawer/leader_ship_board_page.dart';
import 'package:all_india_mocktest/pages/drawer/my_exams_info_page.dart';
import 'package:all_india_mocktest/pages/drawer/privacy_page.dart';
import 'package:all_india_mocktest/widgets/list_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/home/drawer/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.home_filled,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              children: [
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
                  width: 20,
                ),
                Text(
                  'User',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                )
              ],
            ),
          ),
          listTileWidget(
            iconData: Icons.account_circle,
            title: 'General info',
            onpressed: () {
              Navigator.pushNamed(context, GeneralInfoPage.routeName);
            },
          ),
          listTileWidget(
            iconData: Icons.list,
            title: 'My exams info',
            onpressed: () {
              Navigator.pushNamed(context, MyExamsInfoPage.routeName);
            },
          ),
          listTileWidget(
            iconData: Icons.lock,
            title: 'Privacy',
            onpressed: () {
              Navigator.pushNamed(context, PrivacyPage.routeName);
            },
          ),
          listTileWidget(
            iconData: Icons.leaderboard,
            title: 'Leadership board',
            onpressed: () {
              Navigator.pushNamed(context, LeaderShipBoradPage.routeName);
            },
          ),
          listTileWidget(
            iconData: Icons.group,
            title: 'About us',
            onpressed: () {
              Navigator.pushNamed(context, AboutUs.routeName);
            },
          ),
          listTileWidget(
            iconData: Icons.power_settings_new,
            title: 'Logout',
            onpressed: () {
              Navigator.popAndPushNamed(context, SigninPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
