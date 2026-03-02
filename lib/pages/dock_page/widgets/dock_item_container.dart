// Flutter imports:
import 'package:flutter/material.dart';

class DockItemContainer extends StatelessWidget {
  const DockItemContainer({super.key, required this.child, this.size});

  final Widget child;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: size?.width,
      height: size?.height,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
