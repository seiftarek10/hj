import 'package:flutter/material.dart';
import 'package:threadly/Core/env_variables.dart';

class ThreadlyApp extends StatelessWidget {
  const ThreadlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.envType,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
