import 'package:flutter/material.dart';

class LeaderShipBoradPage extends StatelessWidget {
  static const routeName = '/home/leadershipboard';

  AppBar appBar = AppBar(
    title: Text(
      'Dashboard',
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
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/leaderboard.png',
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, HomePage.routeName);
                      },
                      child: Text('Individual'),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromWidth(100),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, HomePage.routeName);
                      },
                      child: Text('Mean'),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromWidth(100),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 30,
                  ),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Table(
                    columnWidths: const <int, TableColumnWidth>{
                      0: IntrinsicColumnWidth(),
                      1: FlexColumnWidth(),
                      2: FixedColumnWidth(64),
                    },
                    // defaultColumnWidth: FlexColumnWidth(media.width / 2),
                    children: [
                      TableRow(
                        children: [
                          Container(
                            width: 10,
                          ),
                          Text(
                            'Correct Answers:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text('xxx'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            width: 10,
                          ),
                          Text(
                            'Wrong Answers:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text('xxx'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            width: 10,
                          ),
                          Text(
                            'Total:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text('xxx'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            width: 10,
                          ),
                          Text(
                            'Need to be improved in:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text('xxx'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
