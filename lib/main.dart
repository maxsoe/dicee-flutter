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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset("images/dice${dice1.toString()}.png"),
                onPressed: () {
                  debugPrint(
                      'Left dice pressed. Before setting state dice1 was $dice1');
                  setState(() {
                    dice1 = Random().nextInt(6) + 1;
                    debugPrint("In setState, dice1 is $dice1");
                  });
                },
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextButton(
                child: Image.asset("images/dice${dice2.toString()}.png"),
                onPressed: () {
                  debugPrint(
                      'Left dice pressed. Before setting state dice2 was $dice2');
                  setState(() {
                    dice2 = Random().nextInt(6) + 1;
                    debugPrint("In setState, dice2 is $dice2");
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
