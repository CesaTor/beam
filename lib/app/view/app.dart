import 'package:beam/core/cubit/event_list_cubit.dart';
import 'package:beam/core/routes/app_router.gr.dart';
import 'package:beam/core/theme/color_schemes.dart';
import 'package:beam/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final router = AppRouter();
  final routeProvider = PlatformRouteInformationProvider(
    initialRouteInformation: const RouteInformation(
      location: Navigator.defaultRouteName,
      // on web you need to do this
      // location: 
      // WidgetsBinding.instance?.window.defaultRouteName ?? 
      // Navigator.defaultRouteName,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventListCubit(),
      child: MaterialApp.router(
        title: 'BEAM',
        // Material3 Theme
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        // Localization
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        // Auto-route Routing
        routeInformationProvider: routeProvider,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
        backButtonDispatcher: RootBackButtonDispatcher(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
