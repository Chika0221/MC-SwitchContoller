// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/firebase_codes_stream_privider.dart';
import 'package:switch_controller/models/infrared_code.dart';

class CodeContainer extends HookConsumerWidget {
  const CodeContainer({super.key, required this.code});

  final InfraredCode code;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final borderColor = Color.lerp(
      colorScheme.surface,
      colorScheme.surfaceContainer,
      0.2,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? Colors.red, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        title: Text(code.name, style: textTheme.titleLarge),
        subtitle: Text(
          code.code,
          style: textTheme.bodyLarge,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: (!(code.state))
            ? FilledButton.icon(
                onPressed: () async {
                  final updateCode = code.copyWith(state: true);

                  ref
                      .read(firebaseCodesStreamProvider.notifier)
                      .updateCodes(updateCode);
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("コードを送信しました")));
                },
                icon: const Icon(Icons.play_arrow_rounded),
                label: const Text('Send'),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
