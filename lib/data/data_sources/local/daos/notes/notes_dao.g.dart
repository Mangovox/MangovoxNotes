// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_dao.dart';

// ignore_for_file: type=lint
mixin _$NotesDaoMixin on DatabaseAccessor<AppDatabase> {
  $FolderTable get folder => attachedDatabase.folder;
  $NoteTable get note => attachedDatabase.note;
  NotesDaoManager get managers => NotesDaoManager(this);
}

class NotesDaoManager {
  final _$NotesDaoMixin _db;
  NotesDaoManager(this._db);
  $$FolderTableTableManager get folder =>
      $$FolderTableTableManager(_db.attachedDatabase, _db.folder);
  $$NoteTableTableManager get note =>
      $$NoteTableTableManager(_db.attachedDatabase, _db.note);
}
