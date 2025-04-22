// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:daynex_demo/app/features/presentation/character/view/all_character_view.dart'
    as _i1;
import 'package:daynex_demo/app/features/presentation/home/view/home_view.dart'
    as _i2;
import 'package:daynex_demo/app/features/presentation/splash/view/splash_view.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.AllCharacterView]
class AllCharacterRoute extends _i4.PageRouteInfo<AllCharacterRouteArgs> {
  AllCharacterRoute({
    _i5.Key? key,
    required String endpoint,
    required String title,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         AllCharacterRoute.name,
         args: AllCharacterRouteArgs(
           key: key,
           endpoint: endpoint,
           title: title,
         ),
         initialChildren: children,
       );

  static const String name = 'AllCharacterRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllCharacterRouteArgs>();
      return _i1.AllCharacterView(
        key: args.key,
        endpoint: args.endpoint,
        title: args.title,
      );
    },
  );
}

class AllCharacterRouteArgs {
  const AllCharacterRouteArgs({
    this.key,
    required this.endpoint,
    required this.title,
  });

  final _i5.Key? key;

  final String endpoint;

  final String title;

  @override
  String toString() {
    return 'AllCharacterRouteArgs{key: $key, endpoint: $endpoint, title: $title}';
  }
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeView();
    },
  );
}

/// generated route for
/// [_i3.SplashView]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashView();
    },
  );
}
