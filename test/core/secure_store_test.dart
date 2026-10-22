import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/storage/secure_store.dart';

void main() {
  test('memory store reads and writes session keys', () async {
    final store = SecureStore.memory();
    await store.writeToken('tok');
    await store.writeBranchId('12');
    expect(await store.readToken(), 'tok');
    expect(await store.readBranchId(), '12');
    await store.clearSession();
    expect(await store.readToken(), isNull);
    expect(await store.readBranchId(), isNull);
  });
}
