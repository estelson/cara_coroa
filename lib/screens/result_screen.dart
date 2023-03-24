import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String value;

  const ResultScreen({Key? key, required this.value}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    String imagePath;

    if (widget.value == "cara") {
      imagePath = "assets/images/moeda_cara.png";
    } else {
      imagePath = "assets/images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Image.asset(imagePath),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("assets/images/botao_voltar.png"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
