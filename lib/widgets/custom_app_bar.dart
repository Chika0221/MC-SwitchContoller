// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/widgets/connect_state_container.dart';

class CustomAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.backgroundColor});

  final Widget title;
  final Color? backgroundColor;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: title,
      centerTitle: true,
      backgroundColor: backgroundColor,
      actions: [ConnectStateContainer(), const SizedBox(width: 16)],
    );
  }
}
