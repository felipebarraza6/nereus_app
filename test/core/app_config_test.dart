import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/config/app_config.dart';

void main() {
  test('debug without dart-define uses local Nereus origin', () {
    final config = AppConfig.resolve(envBase: '', debug: true);
    expect(config.apiBase, 'http://localhost:8000');
    expect(config.dataMode, NereusDataMode.yggdra);
    expect(config.originLabel, 'Nereus local');
  });

  test('release without dart-define uses production gateway origin', () {
    final config = AppConfig.resolve(envBase: '', debug: false);
    expect(config.apiBase, 'https://gateway.smarthydro.app');
    expect(config.dataMode, NereusDataMode.yggdra);
  });

  test('NEREUS_API_BASE wins over debug default and strips /api', () {
    final config = AppConfig.resolve(
      envBase: 'https://gateway.smarthydro.app/api',
      debug: true,
    );
    expect(config.apiBase, 'https://gateway.smarthydro.app');
  });

  test('NEREUS_DATA_MODE=fixture selects in-memory data', () {
    final config = AppConfig.resolve(
      envBase: '',
      debug: true,
      envMode: 'fixture',
    );
    expect(config.dataMode, NereusDataMode.fixture);
  });
}
