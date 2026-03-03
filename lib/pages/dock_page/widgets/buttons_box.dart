// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/models/macro.dart';

class ButtonsBox extends HookConsumerWidget {
  const ButtonsBox({super.key, required this.macros});

  final List<Macro> macros;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: macros.length,
        itemBuilder: (context, index) {
          return ButtonsBoxButton(macro: macros[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
      ),
    );
  }
}

class ButtonsBoxButton extends HookConsumerWidget {
  const ButtonsBoxButton({super.key, required this.macro});

  final Macro macro;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () => ref.read(connectProvider.notifier).sendMacro(macro),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: Text(
            macro.name,
            style: textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
