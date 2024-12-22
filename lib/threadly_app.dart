import 'package:flutter/material.dart';
import 'package:threadly/Core/App/connectivity_controller.dart';
import 'package:threadly/Core/App/env_variables.dart';
import 'package:threadly/Core/Routes/routes.dart';
import 'package:threadly/Core/Routes/routes_names.dart';
import 'package:threadly/Core/Screens/no_network_screen.dart';
import 'package:threadly/Core/Style/Theme/app_theme.dart';

class ThreadlyApp extends StatelessWidget {
  const ThreadlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConncted,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            initialRoute: RoutesNames.testOne,
            theme: darkTheme(),
            onGenerateRoute: AppRoutes.onGenerateRoute,
            debugShowCheckedModeBanner: EnvVariables.instance.envType,
            builder: (context, widget) {
              return SafeArea(
                child: Scaffold(
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
