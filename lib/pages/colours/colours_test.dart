// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColoursQuestion {
  final String imageAsset;
  final List<String> options;
  final String correctAnswer;

  ColoursQuestion({
    required this.imageAsset,
    required this.options,
    required this.correctAnswer,
  });
}

class ColoursTestPage extends StatefulWidget {
  const ColoursTestPage({Key? key}) : super(key: key);

  @override
  _PartsTestPageState createState() => _PartsTestPageState();
}

class _PartsTestPageState extends State<ColoursTestPage> {
  List<ColoursQuestion> allQuestions = [
    // Define all PartQuestion objects here
    ColoursQuestion(
      imageAsset: 'assets/colours/black.svg',
      options: ['Black', 'Blue', 'Brown', 'Green'],
      correctAnswer: 'Black',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/blue.svg',
      options: ['Pink', 'Red', 'Blue', 'Violet'],
      correctAnswer: 'Blue',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/brown.svg',
      options: ['Black', 'Brown', 'White', 'Yellow'],
      correctAnswer: 'Brown',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/green.svg',
      options: ['Blue', 'White', 'Red', 'Green'],
      correctAnswer: 'Green',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/orange.svg',
      options: ['Violet', 'White', 'Orange', 'Black'],
      correctAnswer: 'Orange',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/pink.svg',
      options: ['Blue', 'Pink', 'Black', 'Violet'],
      correctAnswer: 'Pink',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/red.svg',
      options: ['Red', 'White', 'Violet', 'Blue'],
      correctAnswer: 'Red',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/violet.svg',
      options: ['Green', 'Brown', 'Orange', 'Violet'],
      correctAnswer: 'Violet',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/white.svg',
      options: ['White', 'Black', 'Red', 'Blue'],
      correctAnswer: 'White',
    ),
    ColoursQuestion(
      imageAsset: 'assets/colours/yellow.svg',
      options: ['Brown', 'Yellow', 'Red', 'Black'],
      correctAnswer: 'Yellow',
    ),
  ];

  List<ColoursQuestion> questions = [];
  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  bool showFeedback = false;
  bool isCorrect = false;

  @override
  void initState() {
    super.initState();
    _restartQuiz();
  }

  void _shuffleQuestions() {
    questions =
        (List<ColoursQuestion>.from(allQuestions)..shuffle()).take(5).toList();
  }

  void _checkAnswer(String answer) {
    setState(() {
      isCorrect = questions[currentQuestionIndex].correctAnswer == answer;
      if (isCorrect) {
        correctAnswers++;
      }
      showFeedback = true;
    });
  }

  void _nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        showFeedback = false;
      } else {
        showFeedback = false;
        _showFinalScore(context);
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      correctAnswers = 0;
      showFeedback = false;
      _shuffleQuestions();
    });
  }

  void _showFinalScore(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Quiz Completed'),
          content: Text(
            'You got $correctAnswers out of ${questions.length} correct!',
            style: const TextStyle(fontSize: 20),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Restart'),
              onPressed: () {
                Navigator.of(context).pop();
                _restartQuiz();
              },
            ),
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ColoursQuestion currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colours Test'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent,
                ),
                child: SvgPicture.asset(
                  currentQuestion.imageAsset,
                ),
              ),
              const SizedBox(height: 20),
              ...currentQuestion.options.map((option) {
                return GestureDetector(
                  onTap: () => _checkAnswer(option),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(1),
                        color: Colors.lightBlueAccent,
                      ),
                      child: Center(
                        child:
                            Text(option, style: const TextStyle(fontSize: 18)),
                      ),
                    ),
                  ),
                );
              }).toList(),
              if (showFeedback)
                Text(
                  isCorrect ? 'Correct!' : 'Wrong!',
                  style: TextStyle(
                    color: isCorrect ? Colors.green : Colors.red,
                    fontSize: 24,
                  ),
                ),
              if (showFeedback)
                ElevatedButton(
                  onPressed: _nextQuestion,
                  child: const Text('Next'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
