import 'package:all_india_mocktest/models/json_question_parser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget multipleChoiceQuestionTwoWidget({
  Question question,
  Function function,
  int index,
  List<int> selectedVal,
}) {
  return Container(
    child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Text(
            question.question,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ...List.generate(question.answers.length, (i) {
          return CheckboxListTile(
            title: Text(
              question.answers[i],
            ),
            activeColor: Colors.black,
            value: selectedVal[i] == -1234567890123411123 ? false : true,
            onChanged: (val) {
              if (selectedVal[i] == -1234567890123411123) {
                function(i, index, -1);
              } else {
                function(-1234567890123411123, index, i);
                
              }
            },
          );
        }).toList(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            'More than one answer can be correct. Select all correct answers',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 10,
            ),
          ),
        )
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     TextButton(
        //       onPressed: () {
        //         function(-1234567890123411123, index);
        //       },
        //       child: Text(
        //         'Clear selection',
        //         style: TextStyle(
        //           color: Colors.black,
        //         ),
        //       ),
        //     )
        //   ],
        // )
      ],
    ),
  );
}
