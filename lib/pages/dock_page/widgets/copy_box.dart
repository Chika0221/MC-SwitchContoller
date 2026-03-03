// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/models/connect.dart';
import 'package:switch_controller/models/macro.dart';

class CopyBox extends HookConsumerWidget {
  const CopyBox({super.key, required this.text, required this.macro});

  final String text;
  final Macro macro;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    final connect = ref.watch(connectProvider);

    Future<void> textFromPhone() async {
      final clipboardData = await Clipboard.getData('text/plain');
      if (clipboardData == null) return;
      final text = clipboardData.text;

      final editingAction = InfoAction.text(
        text: text!,
        macro: Macro(name: text, type: MacroType.text, text: text),
      );

      final editingConnect = connect!.copyWith(infoAction: editingAction);

      await ref.read(connectProvider.notifier).updateConnect(editingConnect);
    }

    return Row(
      children: [
        const SizedBox(width: 8),
        IconButton.filledTonal(
          onPressed: textFromPhone,
          icon: Icon(Icons.arrow_forward_rounded),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: InkWell(
            onTap: () => ref.read(connectProvider.notifier).sendMacro(macro),
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(color: colorScheme.surface),
            ),
          ),
        ),
        const SizedBox(width: 8),
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
