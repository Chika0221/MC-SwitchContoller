// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/models/macro.dart';

class CopyBox extends HookConsumerWidget {
  const CopyBox({super.key, required this.text, required this.macro});

  final String text;
  final Macro macro;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        const SizedBox(width: 8),
        InkWell(
          onTap: () => ref.read(connectProvider.notifier).sendMacro(macro),
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(color: colorScheme.surface),
          ),
        ),
        Spacer(),
        IconButton.filledTonal(
          onPressed: () => ref.read(connectProvider.notifier).sendMacro(macro),
          icon: const Icon(Icons.content_paste_go_rounded),
        ),
        const SizedBox(width: 4),
        IconButton.filledTonal(
          onPressed: () => Clipboard.setData(ClipboardData(text: text)),
          icon: const Icon(Icons.content_copy_rounded),
        ),
      ],
    );
  }
}
