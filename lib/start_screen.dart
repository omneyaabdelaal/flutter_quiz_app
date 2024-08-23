
import 'package:flutter/material.dart';



class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuize,{super.key});

   final Function() startQuize;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(248, 158, 158, 158),
            ),
          

          /*Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          )*/
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter The Fun Way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed:
              startQuize
             ,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon:const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
