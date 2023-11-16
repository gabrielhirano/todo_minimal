import 'dart:developer' as dev;

enum AppEnvironment {
  production(environmentName: 'Produção'),
  development(environmentName: 'Desenvolvimento');

  const AppEnvironment({required this.environmentName});

  final String environmentName;
}

enum ContextReposity {
  remote,
  local
}

class AppConfig {
  final String appName;
  final AppEnvironment appEnvironment;
  final ContextReposity contextReposity;
  final String apiBaseUrl;
  final int timeout;

  AppConfig({
    required this.appName,
    required this.appEnvironment,
    required this.contextReposity,
    required this.apiBaseUrl,
    required this.timeout,
  });

  static late AppConfig _instance;

  static setInstance({required AppConfig config}) {
    _instance = config;
    dev.log('APP CONFIGURED FOR: ${config.appName}');
  }

  static AppConfig getInstance() => _instance;

  bool get isProd => _instance.appEnvironment == AppEnvironment.production;
  bool get isDev => _instance.appEnvironment == AppEnvironment.development;

  String get environmentName => _instance.appEnvironment.environmentName;
}
