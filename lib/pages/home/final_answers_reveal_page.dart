import 'package:all_india_mocktest/models/json_question_parser.dart';
import 'package:all_india_mocktest/widgets/question_answer_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FinalAnswersRevelaPage extends StatefulWidget {
  static const routeName =
      '/signin-signup/upcommingexam/exam/attempt/answersreveal';

  @override
  _FinalAnswersRevelaPageState createState() => _FinalAnswersRevelaPageState();
}

class _FinalAnswersRevelaPageState extends State<FinalAnswersRevelaPage> {
  List<dynamic> answers;
  JsonQuestionParser jsonQuestionParser;
  int total = 0, answerd = 0, correct = 0;

  findInsights() {
    total = jsonQuestionParser.questions.length;
    for (var i = 0; i < answers.length; i++) {
      if (answers[i] is List) {
        if (answers[i].any((e) => e != -1234567890123411123)) {
          answerd++;
          List l = answers[i];
          l.removeWhere((element) => element == -1234567890123411123);
          if (listEquals(l, jsonQuestionParser.questions[i].correctIndex)) {
            correct++;
          }
        }
      } else {
        if (answers[i] != -1234567890123411123) {
          answerd++;
          if (answers[i] == jsonQuestionParser.questions[i].correctIndex[0]) {
            correct++;
          }
        }
      }
    }
  }

  int i = 0;

  @override
  Widget build(BuildContext context) {
    Map<String, Object> modalRoute = ModalRoute.of(context).settings.arguments;
    answers = modalRoute['answers'];
    jsonQuestionParser = modalRoute['data'];
    if (i == 0) {
      findInsights();
      setState(() {
        i++;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Review answers',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (_, index) {
            if (index == 0) {
              return Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(25),
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: Colors.blueGrey[100],
                //   ),
                //   borderRadius: BorderRadius.circular(10),
                // ),
                child: Text(
                  '''Thank you for taking the test. Check out your dashboard for your score and live leaderboard ranking to know where you stand. Come back soon for another mock test.\n\nHappy Learning:)''',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 10,
                    color: Colors.blueGrey,
                    letterSpacing: 0.8,
                  ),
                  softWrap: true,
                ),
              );
            }
            return questionAnswerWidget(
              question: jsonQuestionParser.questions[index - 1],
              answer: answers[index - 1],
              qNumber: index,
            );
          },
          separatorBuilder: (_, ind) {
            return Divider(
              color: Colors.blueGrey[100],
            );
          },
          itemCount: jsonQuestionParser.questions.length + 1),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total : $total',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 10,
                  ),
                ),
                Text(
                  'Answerd : $answerd',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 10,
                  ),
                ),
                Text(
                  'Correct : $correct',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Finish review',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
