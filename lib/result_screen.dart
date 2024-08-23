import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_section/data/questions.dart';
import 'package:third_section/questions_summary/question_summary.dart';




class ResultScreen extends StatelessWidget{
  const ResultScreen(this.restart,this.selectedAnswers,{super.key});
  final List <String>selectedAnswers;
  final void Function() restart;
  List<Map<String,Object>> getSummaryStatistics(){
    List<Map<String,Object>> sumamary=[];
    for(var i=0;i<selectedAnswers.length;i++){
      sumamary.add({
        'Question-index':i,
        'Question':questions[i].text,
        'Correct-answer':questions[i].answers[0],
        'User-answer':selectedAnswers[i]

      });

    }
    return sumamary;
    

  }
  @override
  Widget build(context){
    final totalQuestionsNum=questions.length;
    final correctAnswersNum=getSummaryStatistics().where((data){
      return data['Correct-answer']==data['User-answer'];
    }).length;
    return  SizedBox(
      width: double.infinity,
      child:Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text('You answered $correctAnswersNum out of $totalQuestionsNum questions correctly!',
          style:GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height:20),
        QuestionSummary(getSummaryStatistics()),
         const SizedBox(height:20),
        TextButton.icon(onPressed:restart,
         icon:const Icon(Icons.refresh),
        label: const Text('Restart quiz!'),
        style: TextButton.styleFrom(
          foregroundColor: Colors.white
        ),
        
        )
          
        ],
    
      ),
    ),
    );
  }
}