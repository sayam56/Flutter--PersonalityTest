import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.answerQuestion,
      @required this.questIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questIndex]['question']),
        //map  method takes in a function as a param and execustes that function for every list
        //item it has. and the list of the questions will be passed by dart automatically
        ...(questions[questIndex]['answers'] as List<Map<String,Object>>).map(
            (answer) //here the params will be sent by dart itself, we dont have todo it explicitly
            {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList() //map returns an iterable item which can be anything from a list to an array
        // so we had to specify which return object we are looking for.
      ],
    );
  }
}
