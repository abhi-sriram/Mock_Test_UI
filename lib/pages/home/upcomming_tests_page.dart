import 'package:all_india_mocktest/pages/home/exam_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcommingTestsPage extends StatefulWidget {
  static const routeName = '/signin-signup/upcommingtests';

  @override
  _UpcommingTestsPageState createState() => _UpcommingTestsPageState();
}

class _UpcommingTestsPageState extends State<UpcommingTestsPage> {
  Widget containerWidger({String image, String title}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ExamPage.routeName);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey[100],
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                    // height: 30,
                    ),
                Container(
                  height: 150,
                  width: 150,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage(
                  //       'assets/images/upcomming.png',
                  //     ),
                  //   ),
                  // ),
                  child: Icon(
                    CupertinoIcons.calendar_today,
                    size: 110,
                    color: Colors.blueGrey,
                  ),
                ),
                Center(
                  child: Text(
                    'Upcomming Exams',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return containerWidger(
                  image: 'assets/images/gate.png',
                  title: 'Gate',
                );
              },
              childCount: 6,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1),
          ),
        ],
      ),
    );
  }
}
