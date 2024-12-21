import 'package:flutter/material.dart';
import 'package:threadly/Core/App/connectivity_controller.dart';
import 'package:threadly/Core/App/env_variables.dart';
import 'package:threadly/Core/Screens/no_network_screen.dart';

class ThreadlyApp extends StatelessWidget {
  const ThreadlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConncted,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.envType,
            builder: (context, widget) {
              return SafeArea(
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.blue,
                  ),
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget ?? const SizedBox();
                    },
                  ),
                ),
              );
            },
          );
        } else {
          return const MaterialApp(
            home: NoNetworkScreen(),
          );
        }
      },
    );
  }
}
