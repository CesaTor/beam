import 'package:auto_route/annotations.dart';
import 'package:beam/screens/event/view/event_page.dart';
import 'package:beam/screens/event_list/event_list.dart';
import 'package:beam/screens/feed/feed.dart';
import 'package:beam/screens/home/view/home_page.dart';
// To generate new routes
// flutter packages pub run build_runner build

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // HomePage Pageviews
    AutoRoute(
      page: HomePage,
      initial: true,
      path: '/',
      children: [
        AutoRoute(page: FeedPage, path: 'feed'),
        AutoRoute(page: EventListPage, path: 'list'),
      ],
    ),
    // Single Event
    RedirectRoute(path: '/event', redirectTo: '/'),
    AutoRoute(page: EventPage, path: '/event:id'),

    // AutoRoute(page: HomePage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
