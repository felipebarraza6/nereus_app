int asInt(dynamic value, {int fallback = 0}) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse('$value') ?? fallback;
}

String? asStringOrNull(dynamic value) {
  if (value == null) return null;
  if (value is String) return value.isEmpty ? null : value;
  if (value is Map) {
    return asStringOrNull(
      value['name'] ?? value['title'] ?? value['label'] ?? value['id'],
    );
  }
  if (value is List) return null;
  return '$value';
}

String asString(dynamic value, {String fallback = ''}) {
  return asStringOrNull(value) ?? fallback;
}

int? asIntOrNull(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse('$value');
}

double? asDoubleOrNull(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is num) return value.toDouble();
  return double.tryParse('$value');
}

DateTime? asDateTime(dynamic value) {
  if (value == null) return null;
  if (value is DateTime) return value;
  return DateTime.tryParse('$value');
}

Map<String, dynamic> asMap(dynamic value) {
  if (value is Map<String, dynamic>) return value;
  if (value is Map) return Map<String, dynamic>.from(value);
  return {};
}

List<Map<String, dynamic>> asMapList(dynamic value) {
  if (value is! List) return const [];
  return [
    for (final item in value)
      if (item is Map) Map<String, dynamic>.from(item),
  ];
}

/// Paginated `{results: [...]}` or a bare JSON array.
List<Map<String, dynamic>> asResults(dynamic data) {
  if (data is List) return asMapList(data);
  final map = asMap(data);
  if (map.containsKey('results')) return asMapList(map['results']);
  if (map['data'] is List) return asMapList(map['data']);
  return const [];
}
