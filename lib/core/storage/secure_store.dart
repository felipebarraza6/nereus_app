import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Session token/branch storage.
///
/// Web never uses [FlutterSecureStorage] (WebCrypto/IndexedDB throws on iOS
/// Safari and in private mode). Native uses the secure plugin and falls back
/// to in-memory if a read/write fails.
class SecureStore {
  SecureStore({
    FlutterSecureStorage? storage,
    SharedPreferences? prefs,
    Map<String, String>? memory,
  })  : _prefs = prefs,
        _memory = memory ?? <String, String>{},
        _secure = kIsWeb ? null : (storage ?? const FlutterSecureStorage());

  /// In-memory only. Used on web when prefs are unavailable, and in tests.
  SecureStore.memory([Map<String, String>? memory])
      : _secure = null,
        _prefs = null,
        _memory = memory ?? <String, String>{};

  static const tokenKey = 'nereus.token';
  static const branchKey = 'nereus.branch_id';
  static const profileKey = 'nereus.session_profile';

  FlutterSecureStorage? _secure;
  final SharedPreferences? _prefs;
  final Map<String, String> _memory;

  Future<String?> readToken() => _read(tokenKey);

  Future<void> writeToken(String token) => _write(tokenKey, token);

  Future<String?> readBranchId() => _read(branchKey);

  Future<void> writeBranchId(String branchId) => _write(branchKey, branchId);

  Future<String?> readProfile() => _read(profileKey);

  Future<void> writeProfile(String profile) => _write(profileKey, profile);

  Future<void> clearSession() async {
    await _delete(tokenKey);
    await _delete(branchKey);
    await _delete(profileKey);
  }

  Future<String?> _read(String key) async {
    try {
      final secure = _secure;
      if (secure != null) {
        return await secure.read(key: key);
      }
      final prefs = _prefs;
      if (prefs != null) {
        return prefs.getString(key);
      }
    } on Object catch (error, stack) {
      nereusLog('SecureStore.read($key)', error, stack);
      _secure = null;
    }
    return _memory[key];
  }

  Future<void> _write(String key, String value) async {
    _memory[key] = value;
    try {
      final secure = _secure;
      if (secure != null) {
        await secure.write(key: key, value: value);
        return;
      }
      final prefs = _prefs;
      if (prefs != null) {
        await prefs.setString(key, value);
      }
    } on Object catch (error, stack) {
      nereusLog('SecureStore.write($key)', error, stack);
      _secure = null;
    }
  }

  Future<void> _delete(String key) async {
    _memory.remove(key);
    try {
      final secure = _secure;
      if (secure != null) {
        await secure.delete(key: key);
        return;
      }
      final prefs = _prefs;
      if (prefs != null) {
        await prefs.remove(key);
      }
    } on Object catch (error, stack) {
      nereusLog('SecureStore.delete($key)', error, stack);
      _secure = null;
    }
  }
}
