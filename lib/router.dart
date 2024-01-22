import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_gorouter/route.dart';

part 'router.g.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: $appRoutes,
);

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
class AppRouter extends _$AppRouter {
  @override
  GoRouter build() {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: kDebugMode,
      initialLocation: AppRoutes.pageOne,
      routes: $appRoutes,
    );
  }
}
