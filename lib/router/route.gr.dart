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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../app/view/login_view.dart' as _i1;
import '../form/view/form_view.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LogInRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LogInPage());
    },
    FormRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.FormView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(LogInRoute.name, path: '/'),
        _i3.RouteConfig(FormRoute.name, path: '/form-view')
      ];
}

/// generated route for
/// [_i1.LogInPage]
class LogInRoute extends _i3.PageRouteInfo<void> {
  const LogInRoute() : super(LogInRoute.name, path: '/');

  static const String name = 'LogInRoute';
}

/// generated route for
/// [_i2.FormView]
class FormRoute extends _i3.PageRouteInfo<void> {
  const FormRoute() : super(FormRoute.name, path: '/form-view');

  static const String name = 'FormRoute';
}
