// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../screens/event/view/event_page.dart' as _i3;
import '../../screens/event_list/event_list.dart' as _i6;
import '../../screens/feed/feed.dart' as _i4;
import '../../screens/home/view/home_page.dart' as _i2;
import '../../screens/login/view/login_page.dart' as _i1;
import '../../screens/map/view/map_page.dart' as _i5;
import '../../screens/profile/profile.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    EventRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EventRouteArgs>(
          orElse: () => EventRouteArgs(eventId: pathParams.getString('id')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.EventPage(
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    FeedRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FeedPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MapPage(),
      );
    },
    EventListRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.EventListPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/home',
          children: [
            _i8.RouteConfig(
              FeedRoute.name,
              path: 'feed',
              parent: HomeRoute.name,
            ),
            _i8.RouteConfig(
              MapRoute.name,
              path: 'map',
              parent: HomeRoute.name,
            ),
            _i8.RouteConfig(
              EventListRoute.name,
              path: 'list',
              parent: HomeRoute.name,
            ),
            _i8.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          '/event#redirect',
          path: '/event',
          redirectTo: '/',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          EventRoute.name,
          path: '/event:id',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.EventPage]
class EventRoute extends _i8.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required String eventId,
    _i9.Key? key,
  }) : super(
          EventRoute.name,
          path: '/event:id',
          args: EventRouteArgs(
            eventId: eventId,
            key: key,
          ),
          rawPathParams: {'id': eventId},
        );

  static const String name = 'EventRoute';
}

class EventRouteArgs {
  const EventRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i9.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i4.FeedPage]
class FeedRoute extends _i8.PageRouteInfo<void> {
  const FeedRoute()
      : super(
          FeedRoute.name,
          path: 'feed',
        );

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i5.MapPage]
class MapRoute extends _i8.PageRouteInfo<void> {
  const MapRoute()
      : super(
          MapRoute.name,
          path: 'map',
        );

  static const String name = 'MapRoute';
}

/// generated route for
/// [_i6.EventListPage]
class EventListRoute extends _i8.PageRouteInfo<void> {
  const EventListRoute()
      : super(
          EventListRoute.name,
          path: 'list',
        );

  static const String name = 'EventListRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
