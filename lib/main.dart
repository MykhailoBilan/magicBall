import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Text("Ask me anything"),
            backgroundColor: Colors.amber,
          ),
          body: AskMeAnythingPage(),
        ),
      ),
    );

class AskMeAnythingPage extends StatefulWidget {
  const AskMeAnythingPage({super.key});

  @override
  State<AskMeAnythingPage> createState() => _AskMeAnythingPageState();
}

class _AskMeAnythingPageState extends State<AskMeAnythingPage> {
  int imageNumber = 1;
  void ChangeNumber() {
    setState(
      () {
        imageNumber = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              child: Image.asset('images/ball$imageNumber.png'),
              onPressed: () {
                ChangeNumber();
              },
            ),
          )
        ],
      ),
    );
  }
}
