import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelmate/application/auth/auth_controller.dart';
import 'package:travelmate/core/navigation/app_router.dart';
import 'package:travelmate/core/theme/tm_theme.dart';
import 'package:travelmate/gen/l10n.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    ref.watch(authControllerProvider);

    return MaterialApp.router(
      theme: TmTheme.light,
      routerConfig: appRouter.config(),
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
