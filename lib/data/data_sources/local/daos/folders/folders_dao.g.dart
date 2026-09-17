// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folders_dao.dart';

// ignore_for_file: type=lint
mixin _$FoldersDaoMixin on DatabaseAccessor<AppDatabase> {
  $FolderTable get folder => attachedDatabase.folder;
  FoldersDaoManager get managers => FoldersDaoManager(this);
}

class FoldersDaoManager {
  final _$FoldersDaoMixin _db;
  FoldersDaoManager(this._db);
  $$FolderTableTableManager get folder =>
      $$FolderTableTableManager(_db.attachedDatabase, _db.folder);
}
