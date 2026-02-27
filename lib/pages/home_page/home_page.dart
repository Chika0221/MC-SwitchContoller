// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/pages/home_page/widgets/custom_fab.dart';
import 'package:switch_controller/widgets/custom_background.dart';
import 'package:switch_controller/widgets/custom_rive_animation.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key, required this.stfulNavigationShell});

  final StatefulNavigationShell stfulNavigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 4),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(
              color: colorScheme.primary.withValues(alpha: 0.8),
              width: 2,
            ),
          ),
        ),
        child: NavigationBar(
          backgroundColor: colorScheme.primaryContainer,
          destinations: [
            NavigationDestination(icon: Icon(Icons.code), label: 'コード'),
            NavigationDestination(icon: Icon(Icons.tv), label: 'リモコン'),
          ],
          selectedIndex: stfulNavigationShell.currentIndex,
          onDestinationSelected: (value) => stfulNavigationShell.goBranch(
            value,
            initialLocation: value == stfulNavigationShell.currentIndex,
          ),
        ),
      ),
      floatingActionButton: CustomFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CustomBackground(
        backGroundWidget: CustomRiveAnimation(
          size: size,
          fileLoader: FileLoader.fromAsset(
            "assets/animations/background.riv",
            riveFactory: Factory.rive,
          ),
          fit: .fitWidth,
          artBoardName: "downLight-phone",
        ),
        foragroundWidget: stfulNavigationShell,
      ),
    );
  }
}
