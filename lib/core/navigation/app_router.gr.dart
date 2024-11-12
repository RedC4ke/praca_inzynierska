// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddDayPage]
class AddDayRoute extends PageRouteInfo<AddDayRouteArgs> {
  AddDayRoute({
    required Trip trip,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AddDayRoute.name,
          args: AddDayRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AddDayRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddDayRouteArgs>();
      return AddDayPage(
        trip: args.trip,
        key: args.key,
      );
    },
  );
}

class AddDayRouteArgs {
  const AddDayRouteArgs({
    required this.trip,
    this.key,
  });

  final Trip trip;

  final Key? key;

  @override
  String toString() {
    return 'AddDayRouteArgs{trip: $trip, key: $key}';
  }
}

/// generated route for
/// [CreateTripPage]
class CreateTripRoute extends PageRouteInfo<void> {
  const CreateTripRoute({List<PageRouteInfo>? children})
      : super(
          CreateTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateTripRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateTripPage();
    },
  );
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [DayPage]
class DayRoute extends PageRouteInfo<DayRouteArgs> {
  DayRoute({
    required TripDay tripDay,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DayRoute.name,
          args: DayRouteArgs(
            tripDay: tripDay,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DayRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DayRouteArgs>();
      return DayPage(
        tripDay: args.tripDay,
        key: args.key,
      );
    },
  );
}

class DayRouteArgs {
  const DayRouteArgs({
    required this.tripDay,
    this.key,
  });

  final TripDay tripDay;

  final Key? key;

  @override
  String toString() {
    return 'DayRouteArgs{tripDay: $tripDay, key: $key}';
  }
}

/// generated route for
/// [DiscoverPage]
class DiscoverRoute extends PageRouteInfo<void> {
  const DiscoverRoute({List<PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DiscoverPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [TimelinePage]
class TimelineRoute extends PageRouteInfo<void> {
  const TimelineRoute({List<PageRouteInfo>? children})
      : super(
          TimelineRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimelineRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TimelinePage();
    },
  );
}

/// generated route for
/// [TripPage]
class TripRoute extends PageRouteInfo<TripRouteArgs> {
  TripRoute({
    required Trip trip,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          TripRoute.name,
          args: TripRouteArgs(
            trip: trip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TripRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TripRouteArgs>();
      return TripPage(
        trip: args.trip,
        key: args.key,
      );
    },
  );
}

class TripRouteArgs {
  const TripRouteArgs({
    required this.trip,
    this.key,
  });

  final Trip trip;

  final Key? key;

  @override
  String toString() {
    return 'TripRouteArgs{trip: $trip, key: $key}';
  }
}
