// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

class CustomRiveAnimation extends HookConsumerWidget {
  const CustomRiveAnimation({
    super.key,
    required this.size,
    required this.fileLoader,
    required this.fit,
    this.artBoardName,
  });

  final Size size;
  final FileLoader fileLoader;
  final Fit fit;
  final String? artBoardName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: RiveWidgetBuilder(
        fileLoader: fileLoader,
        artboardSelector: (artBoardName != null)
            ? ArtboardSelector.byName(artBoardName!)
            : ArtboardDefault(),
        builder: (context, state) => switch (state) {
          RiveLoading() => const Center(child: CircularProgressIndicator()),
          RiveFailed() => ErrorWidget.withDetails(
            message: state.error.toString(),
            error: FlutterError(state.error.toString()),
          ),
          RiveLoaded() => RiveWidget(controller: state.controller, fit: fit),
        },
      ),
    );
  }
}
