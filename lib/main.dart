import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/home_page.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  void switchScreen(String screen){
    setState(() {
      activeScreen = screen;
    });
  }
  void choseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
        // selectedAnswers.clear();
      });
    }
  }

  void restartQuiz(){
    selectedAnswers.clear();
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }
  @override
  Widget build(BuildContext context){
    Widget screenWidget = HomePage(switchScreen);
    if(activeScreen == 'quiz-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: choseAnswer,);
    }
    if(activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(selectedAnswers, restartQuiz);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
          child: screenWidget
        ),
      )
    );
  }
}