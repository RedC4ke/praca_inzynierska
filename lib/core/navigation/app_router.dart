import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/features/dashboard/dashboard_page.dart';
import 'package:travelmate/features/discover/discover_page.dart';
import 'package:travelmate/features/home/home_page.dart';
import 'package:travelmate/features/profile/profile_page.dart';
import 'package:travelmate/features/timeline/timeline_page.dart';
import 'package:travelmate/features/trip/create_trip_page.dart';
import 'package:travelmate/features/trip/trip_page.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter());

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DashboardRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: DiscoverRoute.page),
            AutoRoute(page: TimelineRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
        AutoRoute(page: CreateTripRoute.page),
        AutoRoute(page: TripRoute.page),
      ];
}
