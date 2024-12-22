import 'package:flutter/material.dart';
import 'package:threadly/Core/Languages/app_localizations.dart';
import 'package:threadly/Core/Style/Theme/colors_theme_extension.dart';

extension ContextExtension on BuildContext {
  Future<Route<dynamic>?> pushName({
    required String routeName,
    Object? arguments,
  }) async {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<void> pop() async {
    return Navigator.pop(this);
  }

  Future<Route<dynamic>?> pushReplacment({
    required String routeName,
    Object? arguments,
  }) async {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }

  // * colos
  AppColors get color => Theme.of(this).extension<AppColors>()!;

  // * trnslate
  String translate({required String wordKey}) {
    return AppLocalizations.of(this)!.translate(wordKey)!;
  }
}
