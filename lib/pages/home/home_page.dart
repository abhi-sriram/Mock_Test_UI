import 'package:all_india_mocktest/pages/drawer/drawer.dart';
import 'package:all_india_mocktest/pages/drawer/leader_ship_board_page.dart';
import 'package:all_india_mocktest/pages/drawer/my_exams_info_page.dart';
import 'package:all_india_mocktest/pages/home/notifications_page.dart';
import 'package:all_india_mocktest/pages/home/upcomming_tests_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/signin-signup/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget containerWidget(
      {bool leftSide, String image, String title, Function onPressed}) {
    if (leftSide) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey[100],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueGrey[100],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar = AppBar(
    actions: [],
  );
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      drawer: drawer(context),
      appBar: appBar,
      body: Container(
        height: media.height -
            MediaQuery.of(context).padding.top -
            appBar.preferredSize.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Quick Access',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              containerWidget(
                leftSide: true,
                image: 'assets/images/test.PNG',
                onPressed: () {
                  Navigator.pushNamed(context, UpcommingTestsPage.routeName);
                },
                title: 'Upcomming tests',
              ),
              containerWidget(
                leftSide: false,
                image: 'assets/images/notification.png',
                onPressed: () {
                  Navigator.pushNamed(context, NotificationsPage.routeName);
                },
                title: 'Notifications',
              ),
              containerWidget(
                leftSide: true,
                image: 'assets/images/leaderboard_1.png',
                onPressed: () {
                  Navigator.pushNamed(context, LeaderShipBoradPage.routeName);
                },
                title: 'Leader board',
              ),
              containerWidget(
                leftSide: false,
                image: 'assets/images/attempt.png',
                onPressed: () {
                  Navigator.pushNamed(context, MyExamsInfoPage.routeName);
                },
                title: 'My exams info',
              ),
              Container(
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
                    fontSize: 10,
                    color: Colors.blueGrey,
                    letterSpacing: 0.8,
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
