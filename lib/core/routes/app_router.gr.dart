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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../screens/event/view/event_page.dart' as _i2;
import '../../screens/event_list/event_list.dart' as _i4;
import '../../screens/feed/feed.dart' as _i3;
import '../../screens/home/view/home_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    EventRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EventRouteArgs>(
          orElse: () => EventRouteArgs(eventId: pathParams.getString('id')));
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.EventPage(
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    FeedRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.FeedPage(),
      );
    },
    EventListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EventListPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              FeedRoute.name,
              path: 'feed',
              parent: HomeRoute.name,
            ),
            _i5.RouteConfig(
              EventListRoute.name,
              path: 'list',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i5.RouteConfig(
          '/event#redirect',
          path: '/event',
          redirectTo: '/',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          EventRoute.name,
          path: '/event:id',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EventPage]
class EventRoute extends _i5.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required String eventId,
    _i6.Key? key,
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

  final _i6.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i3.FeedPage]
class FeedRoute extends _i5.PageRouteInfo<void> {
  const FeedRoute()
      : super(
          FeedRoute.name,
          path: 'feed',
        );

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i4.EventListPage]
class EventListRoute extends _i5.PageRouteInfo<void> {
  const EventListRoute()
      : super(
          EventListRoute.name,
          path: 'list',
        );

  static const String name = 'EventListRoute';
}
