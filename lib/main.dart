//import 'dart:async';

import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

/*class MyApp extends StatelessWidget {
  var quesindex=0;// class ka gloabal variable

  void answerQuest()
  {
    quesindex+=1;
    print(quesindex);
  //  print('Answer Chodsen');
  }
  @override
  var ques = [
    'whats ur name bro?',             
    'Whats ur favourit dish',
  ];
  Widget build(BuildContext context) 
  {
    //return MaterialApp(home: Trext('Hello!'),); // for writing text

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children:
         [
          Text(ques[quesindex]),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuest),
          RaisedButton(child: Text('Answer 2'), onPressed: ()=>print('Answer 2 chosen')),
          RaisedButton(child: Text('Answer 3'), onPressed: ()
          {
            print('Answer 3 chosen');
          }
          ),
         ]

        ),
      ),
    );
  }
}*/
class MyApp extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();  //underscore se private bn jati
  }
}

class _MyAppState extends State<MyApp>{
  final _ques = const[
      {'questionText':'what\'s your fav color?', 
      'answers': [
        {'text':'Black','score':10},
        {'text':'Red','score':5},
        {'text':'Green','score':15},
        {'text':'Blue','score':7},
        ],
      },
     {'questionText':'Whats ur favourite dish?',
      'answers': [
        {'text':'Pizza','score':10},
        {'text':'Pasta','score':8},
        {'text':'Burger','score':5},
        {'text':'Roll','score':3},
      ],
      }, 
       {'questionText':'Whats ur favourite Drink?',
       'answers': [
        {'text':'Beer','score':10},
        {'text':'Coke','score':9},
        {'text':'Wine','score':10},
        {'text':'Juice','score':5},
      ],
       },            
    
  ];
  var _quesindex=0;// class ka gloabal variable
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _quesindex=0;
      _totalScore=0;
    });
  } 
  
  
  void _answerQuest(int score)
  {
    _totalScore += score;
    setState(() {  // this function force to re render the user interface
      _quesindex+=1;
    });
    if(_quesindex < _ques.length){
      print('We have more questions!');
    }

    
  //  print(_quesindex);
  //  print('Answer Chodsen');
  }
  @override
  
  Widget build(BuildContext context) {

    
//return MaterialApp(home: Trext('Hello!'),); // for writing text
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _quesindex<_ques.length ? Quiz(answerQuestion: _answerQuest,quesindex: _quesindex,questions: _ques,) : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}