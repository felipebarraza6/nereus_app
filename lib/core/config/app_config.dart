/// Runtime configuration from `--dart-define`.
class AppConfig {
  const AppConfig({
    this.apiBase = defaultApiBase,
  });

  static const defaultApiBase = 'https://gateway.smarthydro.app/api';

  final String apiBase;

  factory AppConfig.fromEnvironment() {
    const raw = String.fromEnvironment(
      'NEREUS_API_BASE',
      defaultValue: defaultApiBase,
    );
    final trimmed = raw.endsWith('/') ? raw.substring(0, raw.length - 1) : raw;
    // Dio baseUrl is origin; generated paths already include `/api/...`.
    final origin = trimmed.endsWith('/api')
        ? trimmed.substring(0, trimmed.length - 4)
        : trimmed;
    return AppConfig(apiBase: origin);
  }
}
