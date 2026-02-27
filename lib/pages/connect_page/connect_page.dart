// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/infrastructure/providers/route_provider.dart';
import 'package:switch_controller/models/connect.dart';

class ConnectPage extends HookConsumerWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(isConnectedProvider, (previous, next) {
      if (next) {
        context.go(RoutePath.sendCode.path);
      }
    });

    final connectableList = ref.watch(connectableProvider);

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('接続'),
        centerTitle: true,
        foregroundColor: colorScheme.surface,
        backgroundColor: colorScheme.surfaceContainer,
        actions: [
          IconButton(
            onPressed: () async {
              await ref.read(connectableProvider.notifier).refresh();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      backgroundColor: colorScheme.surfaceContainer,
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(connectableProvider.notifier).refresh();
        },
        child: connectableList.when(
          error: (error, stackTrace) =>
              Center(child: Text('エラーが発生しました: $error')),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (data) {
            final filterdList = data
                .where((connect) => connect.state == ConnectState.ready)
                .toList();

            if (filterdList.isEmpty) {
              return Center(
                child: Text(
                  '接続可能なデバイスが見つかりませんでした',
                  style: TextStyle(color: colorScheme.primary),
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListView.separated(
                  itemCount: filterdList.length,
                  itemBuilder: (context, index) {
                    final device = filterdList[index];
                    return ListTile(
                      title: Text(device.hostName ?? "Unknown Device"),
                      subtitle: Text(device.hostID.toString()),
                      onTap: () async {
                        await ref
                            .read(connectProvider.notifier)
                            .connect(device);
                      },
                    );
                  },
                  separatorBuilder: (context, index) => Divider(height: 1),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
