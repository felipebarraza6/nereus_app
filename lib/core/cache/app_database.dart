import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class CachedDocuments extends Table {
  TextColumn get cacheKey => text()();
  TextColumn get payload => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {cacheKey};
}

@DriftDatabase(tables: [CachedDocuments])
class AppDatabase extends _$AppDatabase {
  AppDatabase({QueryExecutor? executor})
      : super(executor ?? driftDatabase(name: 'nereus_cache'));

  @override
  int get schemaVersion => 1;

  Future<CachedDocument?> read(String key) {
    return (select(cachedDocuments)..where((t) => t.cacheKey.equals(key)))
        .getSingleOrNull();
  }

  Future<void> write(String key, String payload) {
    return into(cachedDocuments).insertOnConflictUpdate(
      CachedDocumentsCompanion.insert(
        cacheKey: key,
        payload: payload,
        updatedAt: DateTime.now().toUtc(),
      ),
    );
  }

  Future<void> clear() => delete(cachedDocuments).go();
}
