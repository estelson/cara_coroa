import 'dart:math';

import 'package:cara_coroa/screens/result_screen.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  void _showResult() {
    List<String> items = ["cara", "coroa"];
    int number = Random().nextInt(items.length);
    String result = items[number];

    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(value: result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: _showResult,
                child: Image.asset("assets/images/botao_jogar.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
