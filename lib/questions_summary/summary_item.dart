import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_section/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.dataItem,{super.key});
  final Map<String,Object> dataItem;
  @override
  Widget build(BuildContext context) {
    final isAnswerCorrect=
          dataItem['User-answer']==dataItem['Correct-answer'];
   return  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      QuestionIdentifier(dataItem['Question-index'] as int,
       isAnswerCorrect),
       
      const SizedBox(width:20,),
      Expanded(
        
        child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(dataItem['Question'] as String,
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          const SizedBox(height: 5,),
          Text(dataItem['User-answer'] as String,
          style:const TextStyle(fontSize: 10,color: Colors.blue) ,),

          Text(dataItem['Correct-answer'] as String,
          style:const TextStyle(fontSize: 10,color: Colors.grey) ,),
           const SizedBox(height:10 ,)

        ],
      ))

    ],
   );
  }
}