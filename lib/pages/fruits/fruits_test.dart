// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FruitsQuestion {
  final String imageAsset;
  final List<String> options;
  final String correctAnswer;

  FruitsQuestion({
    required this.imageAsset,
    required this.options,
    required this.correctAnswer,
  });
}

class FruitsTestPage extends StatefulWidget {
  const FruitsTestPage({Key? key}) : super(key: key);

  @override
  _FruitsTestPageState createState() => _FruitsTestPageState();
}

class _FruitsTestPageState extends State<FruitsTestPage> {
  List<FruitsQuestion> allQuestions = [
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/apple.svg',
      options: ['Apple', 'Banana', 'Carrot', 'Red Chilli'],
      correctAnswer: 'Apple',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/banana.svg',
      options: ['Kiwi', 'Apple', 'Ginger', 'Banana'],
      correctAnswer: 'Banana',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/carrot.svg',
      options: ['Potato', 'Pineapple', 'Carrot', 'Orange'],
      correctAnswer: 'Carrot',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/chilli.svg',
      options: ['Potato', 'Okra', 'Grapes', 'Red Chilli'],
      correctAnswer: 'Red Chilli',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/eggplant.svg',
      options: ['Watermelon', 'Tomato', 'Eggplant', 'Kiwi'],
      correctAnswer: 'Eggplant',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/ginger.svg',
      options: ['Red Chilli', 'Banana', 'Strawberry', 'Ginger'],
      correctAnswer: 'Ginger',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/okra.svg',
      options: ['Apple', 'Okra', 'Pineaplle', 'Ginger'],
      correctAnswer: 'Okra',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/onion.png',
      options: ['Onion', 'Banana', 'Okra', 'Orange'],
      correctAnswer: 'Onion',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/orange.svg',
      options: ['Orange', 'Apple', 'Grapes', 'Kiwi'],
      correctAnswer: 'Orange',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/pineapple.svg',
      options: ['Kiwi', 'Tomato', 'Pineapple', 'Strawberry'],
      correctAnswer: 'Pineapple',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/potato.svg',
      options: ['Potato', 'Watermelon', 'Orange', 'Banana'],
      correctAnswer: 'Potato',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/strawberry.png',
      options: ['Potato', 'Kiwi', 'Carrot', 'Strawberry'],
      correctAnswer: 'Strawberry',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/tomato.svg',
      options: ['Tomato', 'Eggplant', 'Okra', 'Ginger'],
      correctAnswer: 'Tomato',
    ),
    FruitsQuestion(
      imageAsset: 'assets/fruitsVeges/watermelon.svg',
      options: ['Kiwi', 'Watermelon', 'Banana', 'Apple'],
      correctAnswer: 'Watermelon',
    ),
  ];

  List<FruitsQuestion> questions = [];
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
        (List<FruitsQuestion>.from(allQuestions)..shuffle()).take(5).toList();
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
    FruitsQuestion currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruits & Vegetables Test'),
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
