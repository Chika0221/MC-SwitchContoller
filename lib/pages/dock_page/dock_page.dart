// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/infrastructure/providers/route_provider.dart';
import 'package:switch_controller/main.dart';

class DockPage extends HookConsumerWidget {
  const DockPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    ref.listen<bool>(isConnectedProvider, (previous, next) {
      if (previous == true && next == false) {
        context.go(RoutePath.sendCode.path);
      }
    });

    return Hero(
      tag: HeroTags.customFab,

      child: Scaffold(
        backgroundColor: colorScheme.surfaceContainer,
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              context.go(RoutePath.sendCode.path);
            },
            child: Text("ドックモード"),
          ),
        ),
      ),
    );
  }
}
