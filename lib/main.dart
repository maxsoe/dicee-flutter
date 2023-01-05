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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice2.png'),
                onPressed: () {
                  debugPrint('Left dice pressed');
                },
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice6.png'),
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
