import 'package:ben_app/providers/view_models/login_model.dart';
import 'package:ben_app/service/login_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'service/init_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'format/sqlite/database_factory.dart';
import 'format/sqlite/sqlite_storage.dart';
import 'format/storage.dart';
import 'generated/i18n.dart';
import 'ui/page/Home.dart';
import 'ui/page/initialize.dart';
import 'ui/page/login.dart';

void main() async {
  final database =
      await SqliteFactory.createInstance("data.db", "assets/config/init.sql");
  final HeaderRepository headerRepository = SqliteHeaderRepository(database);
  final InitializeService initService = InitializeService(headerRepository);
  final bool hasInitialized = await initService.hasInitialized();

  final List<SingleChildCloneableWidget> providers = [
    // _independentServices,
    Provider.value(value: database),
    Provider.value(value: headerRepository),
    Provider.value(value: initService),
    // _dependentServices,
    ProxyProvider<Database, SqliteItemRepository>(
      builder: (context, database, itemRepository) =>
          SqliteItemRepository(database),
    ),
    // _states
    ChangeNotifierProxyProvider<HeaderRepository, LoginViewModel>(
        initialBuilder: (_) => LoginViewModel(),
        builder: (_, repository, viewModel) =>
            viewModel..loginService = LoginService(repository)),
  ];

  runApp(
    MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'ben',
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        routes: {
          "/": (_) => hasInitialized ? new LoginPage() : new InitializePage(),
          "/login": (_) => new LoginPage(),
          "/home": (_) => new HomePage(),
        },
      ),
    ),
  );
}
