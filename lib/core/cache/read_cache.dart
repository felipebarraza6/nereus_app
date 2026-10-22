import 'dart:convert';

import 'package:nereus_app/core/cache/app_database.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';

class ReadCache {
  ReadCache(AppDatabase db)
      : _db = db,
        _memory = <String, String>{};

  ReadCache.memory()
      : _db = null,
        _memory = <String, String>{};

  final AppDatabase? _db;
  final Map<String, String> _memory;

  Future<Map<String, dynamic>?> getJson(String key) async {
    try {
      final db = _db;
      if (db != null) {
        final row = await db.read(key);
        if (row == null) return null;
        return _decode(row.payload);
      }
    } on Object catch (error, stack) {
      nereusLog('ReadCache.getJson', error, stack);
    }
    final cached = _memory[key];
    if (cached == null) return null;
    return _decode(cached);
  }

  Future<void> putJson(String key, Map<String, dynamic> json) async {
    final payload = jsonEncode(json);
    _memory[key] = payload;
    try {
      final db = _db;
      if (db != null) {
        await db.write(key, payload);
      }
    } on Object catch (error, stack) {
      nereusLog('ReadCache.putJson', error, stack);
    }
  }

  Future<void> clear() async {
    _memory.clear();
    try {
      await _db?.clear();
    } on Object catch (error, stack) {
      nereusLog('ReadCache.clear', error, stack);
    }
  }

  Map<String, dynamic>? _decode(String payload) {
    final decoded = jsonDecode(payload);
    if (decoded is Map<String, dynamic>) return decoded;
    if (decoded is Map) return Map<String, dynamic>.from(decoded);
    return null;
  }
}
