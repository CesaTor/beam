import 'package:beam/core/routes/app_router.gr.dart';
import 'package:beam/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return MaterialApp.router(
      title: 'BEAM',
      // TODO - change Theme
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.red),
        colorScheme: ColorScheme.fromSwatch(
          primaryColorDark: Colors.red,
          primarySwatch: Colors.red,
          accentColor: Colors.redAccent,
        ),
      ),
      // Localization
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      // Auto-route Routing
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
