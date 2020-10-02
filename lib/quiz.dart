import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int quesindex;
  final Function answerQuestion;

  //Quiz({Key key, this.questions, this.answerQuestion}) : super(key: key);

  Quiz({@required this.questions,@required this.answerQuestion,@required this.quesindex});
  @override
  Widget build(BuildContext context) {
    return Column(
          children:
         [
          Question(
            questions[quesindex]['questionText'],),
          
       //   RaisedButton(child: Text('Answer 2'), onPressed: ()=>print('Answer 2 chosen')),
        //  RaisedButton(child: Text('Answer 3'), onPressed: (){};
      //    Answer(_answerQuest),
        //  Answer(_answerQuest),
         // Answer(_answerQuest),
         ...(questions[quesindex]['answers'] as List<Map<String,Object>>)
             .map((answer) {
           return Answer(() => answerQuestion(answer['score']),answer['text']);
         }).toList()

         ],

        );
  }
}