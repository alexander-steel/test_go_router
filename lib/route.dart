import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_gorouter/pages/page_five.dart';
import 'package:test_gorouter/pages/page_four.dart';
import 'package:test_gorouter/pages/page_one.dart';
import 'package:test_gorouter/pages/page_three.dart';
import 'package:test_gorouter/pages/page_two.dart';

part "route.g.dart";

class AppRoutes {
  static const pageOne = "/";
  static const pageTwo = "pageTwo";
  static const pageThree = "pageThree";
  static const pageFour = "pageFour";
  static const pageFive = "pageFive";
}

@TypedGoRoute<PageOneRoute>(
  path: AppRoutes.pageOne,
  routes: [
    TypedGoRoute<PageTwoRoute>(
      path: AppRoutes.pageTwo,
      routes: [
        TypedGoRoute<PageFourRoute>(
          path: AppRoutes.pageFour,
        ),
        TypedGoRoute<PageThreeRoute>(
          path: AppRoutes.pageThree,
          routes: [
            TypedGoRoute<PageFiveRoute>(
              path: AppRoutes.pageFive,
            )
          ],
        ),
      ],
    ),
  ],
)
@TypedGoRoute<PageOneRoute>(path: AppRoutes.pageOne, routes: [])
class PageOneRoute extends GoRouteData {
  const PageOneRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => PageOne();
}

@immutable
class PageTwoRoute extends GoRouteData {
  const PageTwoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const PageTwo();
}

@immutable
class PageThreeRoute extends GoRouteData {
  final AnnouncementType announcementType;

  PageThreeRoute(this.announcementType);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PageThree(announcementType: announcementType);
  }
}

@immutable
class PageFourRoute extends GoRouteData {
  final String initialLoadUrl;

  const PageFourRoute(this.initialLoadUrl);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Pagefour(
      initialLoadUrl: '',
    );
  }
}

@immutable
class PageFiveRoute extends GoRouteData {
  final String initialLoadUrl;

  const PageFiveRoute(this.initialLoadUrl);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PageFive(initialLoadUrl: initialLoadUrl);
  }
}

enum AnnouncementType {
  official,
  fanClub,
}
