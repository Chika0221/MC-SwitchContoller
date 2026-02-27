// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/main.dart';
import 'package:switch_controller/widgets/double_line_border_container.dart';

class DockModeButton extends HookConsumerWidget {
  const DockModeButton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DoubleLineBorderContainer(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      child: InkWell(
        onTap: () {
          context.go("/dock");
        },
        child: Hero(
          tag: HeroTags.dockModeButton,
          child: SizedBox.square(
            dimension: 84,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.dock,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(height: 4),
                Text(
                  "ドック",
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
