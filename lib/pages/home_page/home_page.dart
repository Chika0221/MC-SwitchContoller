// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_animated_indexed_stack/easy_animated_indexed_stack.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

// Project imports:
import 'package:switch_controller/pages/remocon_page/remocon_page.dart';
import 'package:switch_controller/pages/send_code_page/send_code_page.dart';
import 'package:switch_controller/widgets/custom_background.dart';
import 'package:switch_controller/widgets/custom_rive_animation.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (value) {
          selectedIndex.value = value;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'コード'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'リモコン'),
        ],
      ),
      body: CustomBackground(
        backGroundWidget: CustomRiveAnimation(
          size: size,
          fileLoader: FileLoader.fromAsset(
            "assets/animations/background.riv",
            riveFactory: Factory.rive,
          ),
          fit: .fitWidth,
          artBoardName: "downLight-phone",
        ),
        foragroundWidget: EasyAnimatedIndexedStack(
          index: selectedIndex.value,
          animationBuilder: (context, animation, child) =>
              FadeTransition(opacity: animation, child: child),
          curve: Curves.easeInOutSine,
          duration: Duration(milliseconds: 240),
          children: [SendCodePage(), RemoconPage()],
        ),
      ),
    );
  }
}
