import 'app_config.dart';

class Environment {
  static final dev = AppConfig(
    appName: 'Meu App Dev',
    appEnvironment: AppEnvironment.development,
    contextReposity: ContextReposity.local,
    apiBaseUrl: 'dev.api.base.com.br',
    timeout: 120000,
  );

  static final prod = AppConfig(
    appName: 'Meu App',
    appEnvironment: AppEnvironment.production,
    contextReposity: ContextReposity.local,
    apiBaseUrl: 'api.base.com.br',
    timeout: 120000,
  );
}
