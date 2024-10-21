import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz,{super.key});
  final void Function(String) startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white.withOpacity(0.7),
          ),
          const SizedBox(height: 30,),
           Text(
              "Learn FLutter The Fun Way",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 18,
              ),
          ),
          const SizedBox(height: 30,),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white),
            ),
            onPressed: () => startQuiz('quiz-screen'), 
            child:const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Start Quiz",),
                SizedBox(width: 20,),
                Icon(Icons.arrow_forward)
              ],
            )
          )
        ],
      ),
    );
  }
}