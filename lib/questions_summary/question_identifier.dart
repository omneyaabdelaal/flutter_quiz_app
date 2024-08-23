import 'package:flutter/material.dart';


class QuestionIdentifier extends StatelessWidget{
 const  QuestionIdentifier(this.questionIndex,this.isAnswerCorrect,{super.key});
 final int questionIndex;
 final bool isAnswerCorrect;
 @override
 Widget build( context) {
  final questionNumber=questionIndex+1;

  return Container(
    height: 30,
    width: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color:  isAnswerCorrect
      ?const Color.fromARGB(49, 50, 241, 59)
      :const Color.fromARGB(68, 215, 9, 9),
      borderRadius:BorderRadius.circular(100),
      
    ),
    child: Text(questionNumber.toString(),
    style:const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,

    ),),

  );
   
  }

}