import 'package:flutter/foundation.dart';

enum NereusDataMode { yggdra, fixture }

/// Runtime configuration from `--dart-define`.
class AppConfig {
  const AppConfig({
    this.apiBase = productionOrigin,
    this.dataMode = NereusDataMode.yggdra,
    this.debug = false,
  });

  static const productionOrigin = 'https://gateway.smarthydro.app';
  static const localOrigin = 'http://localhost:8000';
  static const defaultApiBase = '$productionOrigin/api';

  final String apiBase;
  final NereusDataMode dataMode;
  final bool debug;

  bool get isFixture => dataMode == NereusDataMode.fixture;

  String get originLabel {
    if (isFixture) return 'datos de demostración';
    if (apiBase.contains('localhost') || apiBase.contains('127.0.0.1')) {
      return 'Nereus local';
    }
    return 'Nereus';
  }

  factory AppConfig.fromEnvironment() {
    return AppConfig.resolve(
      envBase: const String.fromEnvironment('NEREUS_API_BASE'),
      envMode: const String.fromEnvironment('NEREUS_DATA_MODE'),
      debug: kDebugMode,
    );
  }

  factory AppConfig.resolve({
    required String envBase,
    required bool debug,
    String envMode = '',
  }) {
    final trimmed = envBase.trim();
    final origin = trimmed.isEmpty
        ? (debug ? localOrigin : productionOrigin)
        : originFrom(trimmed);
    final mode = envMode.trim().toLowerCase() == 'fixture'
        ? NereusDataMode.fixture
        : NereusDataMode.yggdra;
    return AppConfig(apiBase: origin, dataMode: mode, debug: debug);
  }

  static String originFrom(String raw) {
    final trimmed = raw.endsWith('/') ? raw.substring(0, raw.length - 1) : raw;
    if (trimmed.endsWith('/api')) {
      return trimmed.substring(0, trimmed.length - 4);
    }
    return trimmed;
  }
}
