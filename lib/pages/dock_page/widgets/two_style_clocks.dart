// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/theme/custom_theme.dart';

class TwoStyleClocks extends HookConsumerWidget {
  const TwoStyleClocks({super.key});

  String optimizeDigitCount(int digit) {
    return digit.toString().padLeft(2, "0");
  }

  String optimizeTimeStyle(TimeOfDay time) {
    return "${optimizeDigitCount(time.hour)}:${optimizeDigitCount(time.minute)}";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Text(
        optimizeTimeStyle(TimeOfDay.now()),
        style: textTheme.headlineLarge?.copyWith(
          color: colorScheme.primary,
          fontSize: 80,
        ),
        // style: CustomTheme.titleTheme(context).textTheme.headlineLarge
        //     ?.copyWith(color: colorScheme.primary, fontSize: 40),
      ),
    );
  }
}
