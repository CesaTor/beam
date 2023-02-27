import 'package:auto_route/annotations.dart';
import 'package:beam/home/view/home_page.dart';

// To generate new routes
// flutter packages pub run build_runner build

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true), // TODO - Splash
    // AutoRoute(page: HomePage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
