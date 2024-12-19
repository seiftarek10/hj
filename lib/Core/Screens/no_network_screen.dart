import 'package:flutter/material.dart';
import 'package:threadly/Core/Assets/assets.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesNoNetwork),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
