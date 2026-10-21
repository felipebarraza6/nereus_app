import 'dart:convert';

import 'package:nereus_app/core/cache/app_database.dart';

class ReadCache {
  ReadCache(this._db);

  final AppDatabase _db;

  Future<Map<String, dynamic>?> getJson(String key) async {
    final row = await _db.read(key);
    if (row == null) return null;
    final decoded = jsonDecode(row.payload);
    if (decoded is Map<String, dynamic>) return decoded;
    if (decoded is Map) return Map<String, dynamic>.from(decoded);
    return null;
  }

  Future<void> putJson(String key, Map<String, dynamic> json) {
    return _db.write(key, jsonEncode(json));
  }

  Future<void> clear() => _db.clear();
}
