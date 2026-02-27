// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/models/connect.dart';

class ConnectStateContainer extends HookConsumerWidget {
  const ConnectStateContainer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connect = ref.watch(connectProvider);
    final connectState = connect?.state;

    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: () {
        ref.read(connectProvider.notifier).disconnect();
      },
      child: Container(
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: colorScheme.surfaceContainer,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                (connectState == ConnectState.connected)
                    ? connect?.hostName ?? "接続済み"
                    : "未接続",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.copyWith(color: colorScheme.surface),
              ),
              const SizedBox(width: 4),
              Container(
                width: 12,
                height: 12,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: switch (connectState) {
                    ConnectState.connected => Colors.green,
                    ConnectState.ready => colorScheme.surface,
                    ConnectState.offline => Colors.red,
                    null => colorScheme.surface,
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
