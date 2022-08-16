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
import 'package:flutter/material.dart' as _i6;

import '../association/view/ass_details.dart' as _i5;
import '../association/view/ass_view.dart' as _i4;
import '../data/model/association.dart' as _i7;
import '../form/view/form_view.dart' as _i2;
import '../login/view/logIn_vieww.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LogInRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LogInPagee());
    },
    FormRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.FormView());
    },
    AssociationRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    AssociationViewRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AssociationView());
    },
    AssDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AssDetailsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.AssDetails(key: args.key, association: args.association));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(LogInRoute.name, path: '/'),
        _i3.RouteConfig(FormRoute.name, path: '/form-view'),
        _i3.RouteConfig(AssociationRoute.name,
            path: '/empty-router-page',
            children: [
              _i3.RouteConfig(AssociationViewRoute.name,
                  path: '', parent: AssociationRoute.name),
              _i3.RouteConfig(AssDetailsRoute.name,
                  path: 'ass-details', parent: AssociationRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.LogInPagee]
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

/// generated route for
/// [_i3.EmptyRouterPage]
class AssociationRoute extends _i3.PageRouteInfo<void> {
  const AssociationRoute({List<_i3.PageRouteInfo>? children})
      : super(AssociationRoute.name,
            path: '/empty-router-page', initialChildren: children);

  static const String name = 'AssociationRoute';
}

/// generated route for
/// [_i4.AssociationView]
class AssociationViewRoute extends _i3.PageRouteInfo<void> {
  const AssociationViewRoute() : super(AssociationViewRoute.name, path: '');

  static const String name = 'AssociationViewRoute';
}

/// generated route for
/// [_i5.AssDetails]
class AssDetailsRoute extends _i3.PageRouteInfo<AssDetailsRouteArgs> {
  AssDetailsRoute({_i6.Key? key, required _i7.Association association})
      : super(AssDetailsRoute.name,
            path: 'ass-details',
            args: AssDetailsRouteArgs(key: key, association: association));

  static const String name = 'AssDetailsRoute';
}

class AssDetailsRouteArgs {
  const AssDetailsRouteArgs({this.key, required this.association});

  final _i6.Key? key;

  final _i7.Association association;

  @override
  String toString() {
    return 'AssDetailsRouteArgs{key: $key, association: $association}';
  }
}
