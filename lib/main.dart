import 'package:flutter/material.dart';
import 'quiz.dart';
import 'Result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionindex = 0;
  int totalscore = 0;

  void answerquestion(score) {
    totalscore += score;
    setState(() {
      questionindex += 1;
    });
  }

  void resetquiz() {
    setState(() {
      questionindex = 0;
      totalscore = 0;
    });
  }

  var question = [
    {
      'questiontext':
          "If the positive terminal of the battery is connected to the anode of the diode, then it is known as",
      'answers': [
        {'text': 'Schottky barrier', 'score': 0},
        {'text': 'Forward biased', 'score': 2},
        {'text': 'Reverse biased', 'score': 0},
        {'text': 'Equilibrium', 'score': 0}
      ],
    },
    {
      'questiontext':
          "What is the approximate voltage for a silicon PV cell, the most common material used in photovoltaics?",
      'answers': [
        {'text': '1.5', 'score': 0},
        {'text': '0.75', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '0.5', 'score': 2}
      ],
    },
    {
      'questiontext':
          "Which of the following statements best describes the relationship between current and irradiance?",
      'answers': [
        {'text': 'Current & irradiance are not related', 'score': 0},
        {'text': 'Current increases with more irradiance', 'score': 2},
        {'text': 'Current decreases with more irradiance', 'score': 0},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questiontext':
          "What is the system voltage, current, and power of an array made of four identical PV modules wired in a series operating at 50 volts and 5 amps each?",
      'answers': [
        {'text': '50 volts , 5 Amps , 250 watts', 'score': 0},
        {'text': '200 volts, 5 Amps , 1000 watts', 'score': 2},
        {'text': '200 volts , 20 Amps , 4000 watts', 'score': 0},
        {'text': '50 volts , 20 Amps , 1000 watts', 'score': 0}
      ],
    },
    {
      'questiontext':
          "Which wiring method connects power sources in a way that provides only one path of current flow?",
      'answers': [
        {'text': 'Series', 'score': 2},
        {'text': 'Parallel', 'score': 0},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            " Solar Quiz App ",
          ),
          centerTitle: true,
        ),
        body: Container(
          child: questionindex < question.length
              ? Quiz(question, questionindex, answerquestion)
              : Result(resetquiz, totalscore),
        ),
      ),
    );
  }
}
