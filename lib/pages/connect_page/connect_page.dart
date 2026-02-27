// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/infrastructure/providers/route_provider.dart';

class ConnectPage extends HookConsumerWidget {
  const ConnectPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(isConnectedProvider, (previous, next) {
      if (next) {
        context.go(RoutePath.sendCode.path);
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Connect'), centerTitle: true),
      // body: ,
    );
  }
}
