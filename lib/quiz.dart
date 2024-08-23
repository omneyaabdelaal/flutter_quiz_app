import 'package:flutter/material.dart';
import 'package:third_section/data/questions.dart';
import 'package:third_section/quiz_screen.dart';
import 'package:third_section/result_screen.dart';
import 'package:third_section/start_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});
 
  @override
  State<Quiz> createState(){
    return _QuizState();

  }
}
class _QuizState extends State<Quiz>{
  var activeScreen='Start-screen';
  List<String> selectedAnswers=[];

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen='result-screen';
        
      }
     
      );

    }
  }
 
  void switchScreen(){
    setState(() {
      activeScreen='Questions-screen';
    });

  }
 
 void restartQuiz(){
      setState(() {
        selectedAnswers=[];
        activeScreen='Questions-screen';
      });
    }

  @override
  Widget build(conext){
    Widget screenWidget=StartScreen(switchScreen);
    if(activeScreen=='Questions-screen'){
      screenWidget=QuizScreen(chooseAnswer);

    }
    if(activeScreen=='result-screen'){
      screenWidget=ResultScreen(restartQuiz, selectedAnswers);

    }

   

    return  MaterialApp(
      home: Scaffold(
        body: Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 2, 71, 128),
                  Color.fromARGB(184, 56, 139, 234),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
            child:screenWidget
            ),
      ),
    );
  }
}