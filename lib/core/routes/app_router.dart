import 'package:auto_route/annotations.dart';
import 'package:beam/screens/event/view/event_page.dart';
import 'package:beam/screens/event_list/event_list.dart';
import 'package:beam/screens/feed/feed.dart';
import 'package:beam/screens/home/view/home_page.dart';
import 'package:beam/screens/login/view/login_page.dart';
import 'package:beam/screens/map/view/map_page.dart';
import 'package:beam/screens/profile/profile.dart';
// To generate new routes
// flutter packages pub run build_runner build

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, path: '/', initial: true),
    // HomePage Pageviews
    AutoRoute(
      page: HomePage,
      path: '/home',
      children: [
        AutoRoute(page: FeedPage, path: 'feed'),
        AutoRoute(page: MapPage, path: 'map'),
        AutoRoute(page: EventListPage, path: 'list'),
        AutoRoute(page: ProfilePage, path: 'profile'),
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
