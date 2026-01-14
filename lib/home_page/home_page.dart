// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/widgets/code_container.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);



    final settingButton = FHeaderAction(
      icon: const Icon(FIcons.ellipsis),
      onPress: () {},
    );

    final headers = [
      FHeader(title: Text('Code'), suffixes: [settingButton]),
      FHeader(title: Text('RemoteController'), suffixes: [settingButton]),
    ];

    return FScaffold(
      // header: headers[selectedIndex.value],
      footer: FBottomNavigationBar(
        index: selectedIndex.value,
        onChange: (value) {
          selectedIndex.value = value;
        },
        children: [
          FBottomNavigationBarItem(icon: Icon(FIcons.code), label: Text('コード')),
          FBottomNavigationBarItem(
            icon: Icon(FIcons.boxes),
            label: Text('リモコン'),
          ),
        ],
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: .min,
            spacing: 16,
            children: [
              FHeader(title: Text('Code'), suffixes: [settingButton]),
              ...List.generate(20, (index) {
                return CodeContainer();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
