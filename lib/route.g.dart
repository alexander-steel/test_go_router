// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $pageOneRoute,
    ];

RouteBase get $pageOneRoute => GoRouteData.$route(
      path: '/',
      factory: $PageOneRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'pageTwo',
          factory: $PageTwoRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'pageFour',
              factory: $PageFourRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'pageThree',
              factory: $PageThreeRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'pageFive',
                  factory: $PageFiveRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $PageOneRouteExtension on PageOneRoute {
  static PageOneRoute _fromState(GoRouterState state) => const PageOneRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PageTwoRouteExtension on PageTwoRoute {
  static PageTwoRoute _fromState(GoRouterState state) => const PageTwoRoute();

  String get location => GoRouteData.$location(
        '/pageTwo',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PageFourRouteExtension on PageFourRoute {
  static PageFourRoute _fromState(GoRouterState state) => PageFourRoute(
        state.uri.queryParameters['initial-load-url']!,
      );

  String get location => GoRouteData.$location(
        '/pageTwo/pageFour',
        queryParams: {
          'initial-load-url': initialLoadUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PageThreeRouteExtension on PageThreeRoute {
  static PageThreeRoute _fromState(GoRouterState state) => PageThreeRoute(
        _$AnnouncementTypeEnumMap
            ._$fromName(state.uri.queryParameters['announcement-type']!),
      );

  String get location => GoRouteData.$location(
        '/pageTwo/pageThree',
        queryParams: {
          'announcement-type': _$AnnouncementTypeEnumMap[announcementType],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$AnnouncementTypeEnumMap = {
  AnnouncementType.official: 'official',
  AnnouncementType.fanClub: 'fan-club',
};

extension $PageFiveRouteExtension on PageFiveRoute {
  static PageFiveRoute _fromState(GoRouterState state) => PageFiveRoute(
        state.uri.queryParameters['initial-load-url']!,
      );

  String get location => GoRouteData.$location(
        '/pageTwo/pageThree/pageFive',
        queryParams: {
          'initial-load-url': initialLoadUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
