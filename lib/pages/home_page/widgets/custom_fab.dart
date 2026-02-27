// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/infrastructure/providers/route_provider.dart';
import 'package:switch_controller/main.dart';
import 'package:switch_controller/widgets/double_line_border_container.dart';

class LargeDoubleListButton extends HookConsumerWidget {
  const LargeDoubleListButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.icon,
  });

  final void Function() onTap;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DoubleLineBorderContainer(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      child: InkWell(
        onTap: onTap,
        child: Hero(
          tag: HeroTags.customFab,
          child: SizedBox.square(
            dimension: 84,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFab extends HookConsumerWidget {
  const CustomFab({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isConnected = ref.watch(isConnectedProvider);

    return (isConnected)
        ? LargeDoubleListButton(
            onTap: () => context.go(RoutePath.dock.path),
            label: "ドック",
            icon: Icons.dock,
          )
        : LargeDoubleListButton(
            onTap: () => context.go(RoutePath.connect.path),
            label: '接続',
            icon: Icons.add,
          );
  }
}
