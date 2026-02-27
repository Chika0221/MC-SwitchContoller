// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/models/connect.dart';
import 'package:switch_controller/widgets/connect_state_container.dart';

class CustomAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final Widget title;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connect = ref.watch(connectProvider);
    final connectState = connect?.state;

    return AppBar(
      title: Text("Switch Controller"),
      centerTitle: true,
      actions: [ConnectStateContainer(), const SizedBox(width: 16)],
    );
  }
}
