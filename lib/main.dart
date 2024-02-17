import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: const Text(
            style: TextStyle(color: Colors.white), 'Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballFace = 1;

  void shakeBall() {
    setState(() {
      ballFace = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: TextButton(
            onPressed: () {
              shakeBall();
            },
            child: Image.asset('images/ball$ballFace.png')),
      ),
    );
  }
}
