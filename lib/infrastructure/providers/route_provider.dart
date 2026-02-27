// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/pages/dock_page/dock_page.dart';
import 'package:switch_controller/pages/home_page/home_page.dart';
import 'package:switch_controller/pages/remocon_page/remocon_page.dart';
import 'package:switch_controller/pages/send_code_page/send_code_page.dart';

final routeProvider = Provider((ref) {
  return GoRouter(
    initialLocation: RoutePath.sendCode.path,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // 画面の向きを縦に固定
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);

          return HomePage(stfulNavigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePath.sendCode.path,
                builder: (context, state) => SendCodePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePath.remocon.path,
                builder: (context, state) => RemoconPage(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        path: RoutePath.dock.path,
        builder: (context, state) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]);

          return DockPage();
        },
      ),
      GoRoute(
        path: RoutePath.settings.path,
        builder: (context, state) => Container(),
      ),
    ],
  );
});

enum RoutePath {
  home('/home'),
  dock('/dock'),
  sendCode('/code'),
  remocon('/remocon'),
  settings('/settings');

  final String path;
  const RoutePath(this.path);
}
