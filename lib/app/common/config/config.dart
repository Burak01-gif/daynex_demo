enum Environment { production, development }

final class Config {
  static late Environment currentEnvironment;

  static String get apiBaseUrl {
    switch (currentEnvironment) {
      case Environment.production:
        return 'https://hp-api.onrender.com'; 
      case Environment.development:
        return 'https://hp-api.onrender.com'; 
    }
  }

  static String get environmentName {
    return currentEnvironment.name;
  }
}
