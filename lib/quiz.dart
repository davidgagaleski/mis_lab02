import 'package:flutter/material.dart';
import 'package:mis_lab02/answer.dart';
import 'package:mis_lab02/model/QuestionAnswer.dart';
import 'package:mis_lab02/question.dart';

class Quiz extends StatelessWidget {
  final List<QuestionAnswer> questionsAndAnswers;
  final Function() chooseAnswer;
  final int questionIndex;

  const Quiz({
    Key? key,
    required this.questionIndex,
    required this.questionsAndAnswers,
    required this.chooseAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question: questionsAndAnswers[questionIndex].question,
        ),
        ...questionsAndAnswers[questionIndex].answers.map((answer) {
          return Answer(
            answer: answer,
            chooseAnswer: chooseAnswer,
          );
        })
      ],
    );
  }
}
