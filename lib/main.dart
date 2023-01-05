import 'package:flutter/material.dart';

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
  String dice2 = "5";

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
                  debugPrint('Left dice pressed');
                  setState(() {
                    dice1 = 1;
                  });
                },
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextButton(
                child: Image.asset("images/dice$dice2.png"),
                onPressed: () {
                  debugPrint('Right dice pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
