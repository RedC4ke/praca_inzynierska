import 'package:auto_route/auto_route.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter());

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [];
}
