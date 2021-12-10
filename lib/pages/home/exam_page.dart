import 'package:all_india_mocktest/pages/home/attempt_exam_page.dart';
import 'package:all_india_mocktest/pages/home/exam_registration_page.dart';
import 'package:all_india_mocktest/widgets/list_tile_widget.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class ExamPage extends StatefulWidget {
  static const routeName = '/signin-signup/upcommingexam/exam';

  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  CountDownController _controller = CountDownController();
  AppBar appBar = AppBar(
    title: Text(
      'Gate',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
  int duration = (15 * 60);
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar,
      body: Container(
        height: media.height -
            MediaQuery.of(context).padding.top -
            appBar.preferredSize.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularCountDownTimer(
                    duration: duration,
                    initialDuration: 0,
                    controller: _controller,
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.4,
                    ringColor: Colors.grey[300],
                    ringGradient: null,
                    fillColor: Colors.purpleAccent[100],
                    fillGradient: LinearGradient(
                      colors: [
                        // Theme.of(context).primaryColor,
                        // Theme.of(context).primaryColor.withOpacity(0.2),
                        Colors.blueGrey.shade900,
                        Colors.blueGrey.shade100,
                      ],
                    ),
                    backgroundColor: Colors.white,
                    backgroundGradient: null,
                    strokeWidth: 20.0,
                    strokeCap: StrokeCap.round,
                    textStyle: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textFormat: CountdownTextFormat.HH_MM_SS,
                    isReverse: true,
                    isReverseAnimation: true,
                    isTimerTextShown: true,
                    autoStart: true,
                    onStart: () {
                      print('Countdown Started');
                    },
                    onComplete: () {
                      print('Countdown Ended');
                    },
                  ),
                  Text(
                    'Time Left',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              listTileWidget(
                iconData: Icons.mode_edit,
                title: 'Attempt',
                onpressed: () {
                  Navigator.pushNamed(context, ExamRegistrationPage.routeName,
                      arguments: {'duration': _controller.getTime()});
                },
              ),
              listTileWidget(
                iconData: Icons.help_outline,
                title: 'Question paper',
                onpressed: () {},
              ),
              listTileWidget(
                iconData: Icons.menu_book,
                title: 'Syllabus',
                onpressed: () {},
              ),
              listTileWidget(
                iconData: Icons.stars,
                title: 'Cutoff',
                onpressed: () {},
              ),
              listTileWidget(
                iconData: Icons.app_registration,
                title: 'Register to exam',
                onpressed: () {
                  Navigator.pushNamed(context, ExamRegistrationPage.routeName,
                      arguments: {'duration': _controller.getTime()});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
