import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/cache/read_cache.dart';

void main() {
  test('memory cache stores JSON without Drift', () async {
    final cache = ReadCache.memory();
    await cache.putJson('session.user', {'token': 'abc'});
    expect(await cache.getJson('session.user'), {'token': 'abc'});
    await cache.clear();
    expect(await cache.getJson('session.user'), isNull);
  });
}
