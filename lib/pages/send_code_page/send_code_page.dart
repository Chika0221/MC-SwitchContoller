// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/firebase_codes_stream_privider.dart';
import 'package:switch_controller/widgets/code_container.dart';

class SendCodePage extends HookConsumerWidget {
  const SendCodePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codeStream = ref.watch(firebaseCodesStreamProvider);

    return Center(
      child: codeStream.when(
        data: (codes) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: .min,
              spacing: 16,
              children: [
                // SizedBox(height: size.height * 0.1),
                // SizedBox(
                //   height: size.height * 0.3,
                //   child: Center(
                //     child: Text(
                //       "コード一覧",
                //       style: Theme.of(context).textTheme.displayLarge,
                //     ),
                //   ),
                // ),
                FHeader(title: Text("Code")),
                ...List.generate(codes.length, (index) {
                  return CodeContainer(code: codes[index]);
                }),
              ],
            ),
          );
        },
        loading: () => const FProgress(),
        error: (error, stackTrace) => Text('Error: $error'),
      ),
    );
  }
}
