// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/models/macro.dart';

class SliderBox extends HookConsumerWidget {
  const SliderBox({
    super.key,
    required this.min,
    required this.max,
    required this.value,
    required this.label,
    required this.macro,
  });

  final double min;
  final double max;
  final double value;
  final String label;
  final Macro macro;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final sliderValue = useState(value);

    return Row(
      children: [
        Text(
          label,
          style: textTheme.titleLarge?.copyWith(color: colorScheme.surface),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderThemeData(
              // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15,),
              showValueIndicator: ShowValueIndicator.onDrag,
            ),
            child: Slider(
              label: sliderValue.value.round().toString(),
              min: min,
              max: max,
              value: sliderValue.value,
              onChangeEnd: (value) {
                ref
                    .read(connectProvider.notifier)
                    .sendMacro(
                      macro.copyWith(
                        name: value.toInt().toString(),
                        text: value.toInt().toString(),
                      ),
                    );
              },
              onChanged: (double value) => sliderValue.value = value,
            ),
          ),
        ),
      ],
    );
  }
}
