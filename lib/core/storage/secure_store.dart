import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStore {
  SecureStore({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  static const tokenKey = 'nereus.token';
  static const branchKey = 'nereus.branch_id';

  final FlutterSecureStorage _storage;

  Future<String?> readToken() => _storage.read(key: tokenKey);

  Future<void> writeToken(String token) =>
      _storage.write(key: tokenKey, value: token);

  Future<String?> readBranchId() => _storage.read(key: branchKey);

  Future<void> writeBranchId(String branchId) =>
      _storage.write(key: branchKey, value: branchId);

  Future<void> clearSession() async {
    await _storage.delete(key: tokenKey);
    await _storage.delete(key: branchKey);
  }
}
