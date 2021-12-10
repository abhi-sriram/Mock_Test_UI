import 'package:all_india_mocktest/pages/exams_info/completed_exams_page.dart';
import 'package:all_india_mocktest/pages/exams_info/my_preparation_page.dart';
import 'package:all_india_mocktest/pages/exams_info/overall_performance_page.dart';
import 'package:all_india_mocktest/pages/exams_info/upcomming_exams_page.dart';
import 'package:all_india_mocktest/pages/exams_info/where_to_improve_page.dart';
import 'package:all_india_mocktest/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

class MyExamsInfoPage extends StatelessWidget {
  static const routeName = '/home/generalinfo';

  AppBar appBar = AppBar(
    title: Text(
      'My exams info',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
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
                  iconData: Icons.check_box_outlined,
                  title: 'Completed Exams',
                  onpressed: () {
                    Navigator.pushNamed(context, CompletedExamsPage.routeName);
                  },
                ),
                listTileWidget(
                  iconData: Icons.self_improvement,
                  title: 'Where to improve',
                  onpressed: () {
                    Navigator.pushNamed(context, WhereToImprovePage.routeName);
                  },
                ),
                listTileWidget(
                  iconData: Icons.bar_chart_rounded,
                  title: 'Overall performance',
                  onpressed: () {
                    Navigator.pushNamed(
                        context, OverallPerformancePage.routeName);
                  },
                ),
                listTileWidget(
                  iconData: Icons.new_releases_outlined,
                  title: 'Upcomming Exams',
                  onpressed: () {
                    Navigator.pushNamed(context, UpcommingExamsPage.routeName);
                  },
                ),
                listTileWidget(
                  iconData: Icons.lightbulb_outlined,
                  title: 'My preparation',
                  onpressed: () {
                    Navigator.pushNamed(context, MyPreparationPage.routeName);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
