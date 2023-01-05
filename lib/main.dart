import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent,
        ),
        body: SafeArea(child: DicePage()),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = 2;
  int dice2 = 3;

  void randomiseDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
      debugPrint("Function called. D1 is $dice1, D2 is $dice2");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$dice1.png'),
                onPressed: () {
                  debugPrint('Left die pressed. D1 was $dice1, D2 was $dice2');
                  randomiseDice();
                },
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$dice2.png'),
                onPressed: () {
                  debugPrint('Right die pressed. D1 was $dice1, D2 was $dice2');
                  randomiseDice();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
