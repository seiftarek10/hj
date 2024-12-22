import 'package:flutter/material.dart';
import 'package:threadly/Core/Extensions/context_extension.dart';
import 'package:threadly/Core/Languages/lang_keys.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Text(
            context.translate(wordKey: LangKeys.appName),
            style: const TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
