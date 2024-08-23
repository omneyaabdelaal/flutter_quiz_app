import 'package:flutter/material.dart';
import 'package:third_section/answer_button.dart';
import 'package:third_section/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen(this.onSelectAnswer,{super.key});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  
  var currrentQuestionIndex=0;
  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currrentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currrentQuestion=questions[currrentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Center(
               child: Text(
                currrentQuestion.text,
                style: GoogleFonts.lato(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold )
                         ),
             ),
            const SizedBox(height: 5),
            ...currrentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(answer,(){
                answerQuestion(answer);
              });
            })
      
            
         
          ],
        ),
      ),
    );
  }
}
