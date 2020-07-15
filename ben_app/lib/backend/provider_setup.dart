import 'package:ben_app/backend/services/note_service.dart';
import 'package:ben_app/backend/stores/item_detail_store.dart';
import 'package:camera/camera.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

import 'stores/initialize_store.dart';
import 'stores/item_list_store.dart';
import 'stores/user_store.dart';
import 'common/services/init_service.dart';
import 'common/services/item_service.dart';
import 'common/services/login_service.dart';
import 'common/crypto/kdf.dart';
import 'common/format/sqlite/database_factory.dart';
import 'common/format/sqlite/sqlite_storage.dart';

Future<List<SingleChildCloneableWidget>> _createStandaloneProviders() async {
  return [
    Provider<Database>.value(value: await SqliteFactory.createInstance("data.db", "assets/config/init.sql")),
    Provider<List<CameraDescription>>.value(value: await availableCameras())
  ];
}

List<SingleChildCloneableWidget> _createComponents() {
  return [
    ProxyProvider<Database, SqliteHeaderRepository>(
      create: (_) => SqliteHeaderRepository(),
      update: (_, database, repository) => repository..db = database,
    ),
    ProxyProvider<Database, SqliteItemRepository>(
      create: (_) => SqliteItemRepository(),
      update: (_, database, repository) => repository..db = database,
    ),
  ];
}

final Kdf kdf = new Argon2Kdf();

List<SingleChildCloneableWidget> _createServices() {
  return [
    ProxyProvider2<SqliteHeaderRepository, SqliteItemRepository, InitializeService>(
      update: (_, headerRepository, itemRepository, service) =>
          InitializeService(headerRepository, itemRepository, kdf),
    ),
    ProxyProvider<SqliteHeaderRepository, LoginService>(
      update: (_, repository, service) => LoginService(repository, kdf),
    ),
    ProxyProvider<SqliteItemRepository, ItemService>(
      update: (_, repository, service) => ItemService(repository, kdf),
    ),
    Provider<NoteService>(
      create: (_) => NoteService(),
    ),
  ];
}

/*
  to read: https://mobx.netlify.app/guides/stores
 */
List<SingleChildCloneableWidget> _createStores() {
  return [
    ProxyProvider<LoginService, UserStore>(update: (_, service, child) => UserStore(service)),
    // todo: should we not make this notestore global?
    ProxyProvider3<UserStore, ItemService, NoteService, NoteStore>(
        update: (_, userStore, itemService, noteService, child) => NoteStore(userStore, itemService, noteService)),
  ];
}

Future<List<SingleChildCloneableWidget>> createProviders() async {
  return [
    ...await _createStandaloneProviders(),
    ..._createComponents(),
    ..._createServices(),
    ..._createStores(),
  ];
}
