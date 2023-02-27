import 'package:auto_route/annotations.dart';
import 'package:beam/home/view/home_page.dart';
import 'package:beam/show_event_list/view/show_event_list.dart';
import 'package:beam/show_feed/view/show_feed.dart';

// To generate new routes
// flutter packages pub run build_runner build

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, children: [
      AutoRoute(page: ShowFeedPage, path: 'feed'),
      AutoRoute(page: ShowEventListPage, path: 'list'),
    ]), // TODO - Splash
    // AutoRoute(page: HomePage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
