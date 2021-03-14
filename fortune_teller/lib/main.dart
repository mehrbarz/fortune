import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.lime,
      ),
      body: FortunePage(),
    ),
  ));
}

class FortunePage extends StatefulWidget {
  @override
  _FortunePageState createState() => _FortunePageState();
}

class _FortunePageState extends State<FortunePage> {
  int fortuneNumber = 2;

  void fortuneTeller() {
    setState(() {
      fortuneNumber = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                fortuneTeller();
              },
              child: Image.asset('images/fortune$fortuneNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
