import 'package:flutter/material.dart';
import 'package:threadly/Core/Routes/app_transation.dart';
import 'package:threadly/Core/Routes/routes_names.dart';
import 'package:threadly/Features/test_one.dart';

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.testOne:
        return AppTransation(page: const TestOne());
      default:
        return AppTransation(page: const SizedBox());
    }
  }
}
