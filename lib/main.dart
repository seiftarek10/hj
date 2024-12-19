import 'package:flutter/material.dart';
import 'package:threadly/Core/env_variables.dart';
import 'package:threadly/threadly_app.dart';

void main() {
  EnvVariables.instance.init(envType: EnvType.dev);

  runApp(const ThreadlyApp());
}
