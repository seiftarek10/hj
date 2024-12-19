import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvType { dev, prod }

class EnvVariables {
  EnvVariables._();

  static final EnvVariables instance = EnvVariables._();

  String _envType = '';

  Future<void> init({required EnvType envType}) async {
    switch (envType) {
      case EnvType.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvType.prod:
        await dotenv.load(fileName: '.env.prod');
    }

    _envType = dotenv.env['ENV_TYPE']!;
  }

  bool get envType => _envType == 'dev';
}
