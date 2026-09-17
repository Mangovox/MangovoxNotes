import 'package:drift/drift.dart';
import 'package:mangovox_md_notes/data/data_sources/local/tables/folders_table.dart';

class Note extends Table {
  TextColumn get id => text()();
  TextColumn get title => text().withDefault(const Constant(''))();
  TextColumn get folderId => text().nullable().references(Folder, #id)();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isDaily => boolean().withDefault(const Constant(false))();

  DateTimeColumn get dailyDate => dateTime().nullable()();

  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {id};
}
