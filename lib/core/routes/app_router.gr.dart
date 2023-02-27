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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../home/view/home_page.dart' as _i1;
import '../../show_event_list/view/show_event_list.dart' as _i3;
import '../../show_feed/view/show_feed.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ShowFeedRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ShowFeedPage(),
      );
    },
    ShowEventListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ShowEventListPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              ShowFeedRoute.name,
              path: 'feed',
              parent: HomeRoute.name,
            ),
            _i4.RouteConfig(
              ShowEventListRoute.name,
              path: 'list',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ShowFeedPage]
class ShowFeedRoute extends _i4.PageRouteInfo<void> {
  const ShowFeedRoute()
      : super(
          ShowFeedRoute.name,
          path: 'feed',
        );

  static const String name = 'ShowFeedRoute';
}

/// generated route for
/// [_i3.ShowEventListPage]
class ShowEventListRoute extends _i4.PageRouteInfo<void> {
  const ShowEventListRoute()
      : super(
          ShowEventListRoute.name,
          path: 'list',
        );

  static const String name = 'ShowEventListRoute';
}
