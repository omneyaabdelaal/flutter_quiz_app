import 'package:flutter/material.dart';

import 'package:third_section/questions_summary/summary_item.dart';


class QuestionSummary extends StatelessWidget{
  const QuestionSummary(this.dataSummary,{super.key});
  final List<Map<String,Object>> dataSummary;
  @override
  Widget build(context){
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
        children:dataSummary.map((data) {
          return SummaryItem(data);
        }).toList() ,
      ) ,
      )
     
    );
     }
    }
