import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isConncted = ValueNotifier(true);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    _checkConnection(result);
    Connectivity().onConnectivityChanged.listen(_checkConnection);
  }

  bool _checkConnection(List<ConnectivityResult>? result) {
    if (result!.contains(ConnectivityResult.none)) {
      isConncted.value = false;
      return false;
    } else if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      isConncted.value = true;
      return true;
    }
    return false;
  }
}
