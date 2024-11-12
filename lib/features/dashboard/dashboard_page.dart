import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travelmate/core/navigation/app_router.dart';
import 'package:travelmate/core/theme/tm_ui_util.dart';
import 'package:travelmate/features/dashboard/widgets/tm_bottom_app_bar.dart';
import 'package:travelmate/features/dashboard/widgets/tm_fab.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const _routes = [
    HomeRoute(),
    DiscoverRoute(),
    TimelineRoute(),
    ProfileRoute(),
  ];

  static const items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.transparent,
      ),
      label: 'stub',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _routes,
      floatingActionButton: const BlFab(),
      floatingActionButtonLocation: const CenteredBeveledFABLocation(),
      extendBody: true,
      bottomNavigationBuilder: (_, tabsRouter) {
        return TmBottomAppBar(router: tabsRouter);
      },
    );
  }
}
