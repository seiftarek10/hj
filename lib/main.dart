import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:threadly/Core/App/env_variables.dart';
import 'package:threadly/threadly_app.dart';

void main() {
  EnvVariables.instance.init(envType: EnvType.dev);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  ).then((_) {
    runApp(const ThreadlyApp());
  });
}
