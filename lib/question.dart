import 'package:flutter/material.dart';


class Question extends StatelessWidget {

  final String questionText;// (final) se value change ni hogi once it gets initialized.

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {

    return  Container(

      width: double.infinity,
      margin: EdgeInsets.all(10),

      child: Text( questionText,

                 style: TextStyle(fontSize: 28),
                 textAlign: TextAlign.center, // Basically Working as Enum.
     
      )
     );
      
  
  }
}