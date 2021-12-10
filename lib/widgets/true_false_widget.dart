import 'package:all_india_mocktest/models/json_question_parser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget trueFalseWidget(
    {Question question, Function function, int index, int selectedVal}) {
  return Container(
    child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Text(
            question.question,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ...List.generate(question.answers.length, (i) {
          return RadioListTile(
            title: Text(
              question.answers[i],
            ),
            selectedTileColor: Colors.red,
            activeColor: Colors.black,
            groupValue: selectedVal,
            value: i,
            onChanged: (val) {
              function(val, index);
            },
          );
        }).toList(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                function(-1234567890123411123, index);
              },
              child: Text(
                'Clear selection',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
