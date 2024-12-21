import 'package:flutter/material.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.deepPurpleAccent,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
