import 'package:flutter/material.dart';
import 'package:okapia/services/config_service.dart';
import 'package:okapia/ui/home_screen.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';
import 'services/initialize_service.dart';
import 'ui/initialize_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final hasInitialized = await ConfigService.isConfigExists();
  runApp(MultiProvider(
    providers: [
      Provider<ConfigService>.value(value: new ConfigService()),
      ProxyProvider<ConfigService, InitializeService>(
        update: (_, configService, service) => InitializeService(configService),
      ),
    ],
    child: MaterialApp(
      title: "Okapia",
      initialRoute: '/',
      localizationsDelegates: [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: {
        "/": (_) => hasInitialized ? HomeScreen() : InitializeScreen(),
      },
    ),
  ));
}
