import 'package:flutter/material.dart';
import 'package:threadly/Core/Extensions/context_extension.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: context.color.mainColor,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
