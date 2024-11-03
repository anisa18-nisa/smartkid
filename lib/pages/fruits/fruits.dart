// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:smartkid/pages/fruits/fruits_test.dart';
import 'package:smartkid/utils/constants.dart';

import '../../utils/const_dimensions.dart';

class Fruit {
  final String name;
  final String svgAsset;
  final bool isfruit;
  final Color backgroundColor;

  Fruit({
    required this.name,
    required this.isfruit,
    required this.svgAsset,
    required this.backgroundColor,
  });
}

class FruitsPage extends StatefulWidget {
  FruitsPage({Key? key}) : super(key: key);

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  final FlutterTts flutterTts = FlutterTts();
  int _currentIndex = 0;

  final AudioPlayer audioPlayer = AudioPlayer();
  Color? bgColor;
  @override
  void initState() {
    bgColorInit();
    super.initState();
  }

  void bgColorInit() {
    Future.delayed(Duration.zero).then((value) {
      bgColor = Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white;
    }).then((value) {
      setState(() {});
    });
  }

  void _navigateToFruitsTestPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FruitsTestPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          AppConstants.fruit,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.assignment),
            onPressed: () {
              _navigateToFruitsTestPage(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _navigateToNextFruitsVegets,
              child: Container(
                width: ConstantDimensions.exceptions[1],
                height: ConstantDimensions.exceptions[1],
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppConstants.Fruits[_currentIndex].backgroundColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: ConstantDimensions.widthExtraLarge * 7,
                      height: ConstantDimensions.heightExtraLarge * 7,
                      child: SvgPicture.asset(
                          AppConstants.Fruits[_currentIndex].svgAsset),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: ConstantDimensions.heightMedium),
            IconButton.outlined(
              onPressed: () {
                readName(
                  AppConstants.Fruits[_currentIndex].name,
                );
              },
              icon: const Icon(Icons.volume_up_outlined),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _navigateToPrevFruitsVeges,
                  icon: const Icon(Icons.arrow_back),
                ),
                Expanded(
                  child: Text(
                    AppConstants.Fruits[_currentIndex].name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      fontFamily: 'Comic',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: _navigateToNextFruitsVegets,
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
            const SizedBox(height: ConstantDimensions.heightMedium),
          ],
        ),
      ),
    );
  }

  Future<void> readName(String name) async {
    await flutterTts.setLanguage("EN-IN");
    await flutterTts.speak(name);
  }

  void _navigateToNextFruitsVegets() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % AppConstants.Fruits.length;
    });
    bgColorInit();
  }

  void _navigateToPrevFruitsVeges() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % AppConstants.Fruits.length;
    });
    bgColorInit();
  }
}

class WidgetStateProperty {
  static all(Size size) {}
}
