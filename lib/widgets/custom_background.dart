// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomBackground extends HookConsumerWidget {
  const CustomBackground({
    super.key,
    required this.backGroundWidget,
    required this.foragroundWidget,
    this.byRail = false,
  });

  final Widget backGroundWidget;
  final Widget foragroundWidget;
  final bool byRail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(child: backGroundWidget),
          if (byRail) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 16,
                height: double.infinity,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 16,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(16),
                  ),
                ),
              ),
            ),
          ],
          Positioned.fill(child: foragroundWidget),
        ],
      ),
    );
  }
}
