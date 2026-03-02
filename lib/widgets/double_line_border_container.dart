// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DoubleLineBorderContainer extends HookConsumerWidget {
  const DoubleLineBorderContainer({
    super.key,
    required this.child,
    required this.backgroundColor,
    this.borderRadius = 16.0,
    this.borderType = DoubleLineBorderType.stadium,
  });

  final Widget child;
  final DoubleLineBorderType borderType;
  final Color backgroundColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: (borderType == DoubleLineBorderType.stadium)
          ? ShapeDecoration(
              shape: StadiumBorder(
                side: BorderSide(color: backgroundColor, width: 2),
              ),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: backgroundColor, width: 2),
            ),
      child: Container(
        decoration: (borderType == DoubleLineBorderType.stadium)
            ? ShapeDecoration(shape: StadiumBorder(), color: backgroundColor)
            : BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius - 4),
                color: backgroundColor,
              ),
        child: child,
      ),
    );
  }
}

enum DoubleLineBorderType { stadium, roundedRectangle }
