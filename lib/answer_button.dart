import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onTap, {super.key});
  final String answer;
  final void Function() onTap;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 3),
          backgroundColor:const Color.fromARGB(64, 117, 196, 238),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
           
        ),
        child:  Text(
          answer,
          style:const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
         
        ),
       
      ),
    );

  }
}
