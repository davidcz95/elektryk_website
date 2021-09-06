// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../app/layout.dart' as _i3;
import '../features/first_main_page/view/first_main_page_widget.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SiteLayoutRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SiteLayout();
        }),
    FirstMainPageWidgetRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FirstMainPageWidgetRouteArgs>(
              orElse: () => const FirstMainPageWidgetRouteArgs());
          return _i4.FirstMainPageWidget(key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SiteLayoutRoute.name, path: '/'),
        _i1.RouteConfig(FirstMainPageWidgetRoute.name,
            path: '/first-main-page-widget')
      ];
}

class SiteLayoutRoute extends _i1.PageRouteInfo {
  const SiteLayoutRoute() : super(name, path: '/');

  static const String name = 'SiteLayoutRoute';
}

class FirstMainPageWidgetRoute
    extends _i1.PageRouteInfo<FirstMainPageWidgetRouteArgs> {
  FirstMainPageWidgetRoute({_i2.Key? key})
      : super(name,
            path: '/first-main-page-widget',
            args: FirstMainPageWidgetRouteArgs(key: key));

  static const String name = 'FirstMainPageWidgetRoute';
}

class FirstMainPageWidgetRouteArgs {
  const FirstMainPageWidgetRouteArgs({this.key});

  final _i2.Key? key;
}
