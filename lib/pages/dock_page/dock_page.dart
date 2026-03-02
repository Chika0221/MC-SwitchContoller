// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/infrastructure/providers/route_provider.dart';
import 'package:switch_controller/main.dart';
import 'package:switch_controller/pages/dock_page/widgets/dock_item_container.dart';
import 'package:switch_controller/pages/dock_page/widgets/two_style_clocks.dart';
import 'package:switch_controller/widgets/connect_state_container.dart';

part 'widgets/dock_info_zone.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: .max,
            children: [
              Flexible(flex: 2, child: DockInfoZone()),
              const SizedBox(height: 16),
              Flexible(
                flex: 3,
                child: DockItemContainer(child: SizedBox.expand()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
