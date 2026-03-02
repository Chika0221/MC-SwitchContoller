// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/firebase_codes_stream_privider.dart';
import 'package:switch_controller/widgets/code_container.dart';
import 'package:switch_controller/widgets/custom_app_bar.dart';

class SendCodePage extends HookConsumerWidget {
  const SendCodePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codeStream = ref.watch(firebaseCodesStreamProvider);

    return Scaffold(
      appBar: CustomAppBar(title: Text("Code")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: codeStream.when(
          data: (codes) {
            return ListView.separated(
              itemCount: codes.length,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final code = codes[index];
                return CodeContainer(code: code);
              },
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text('Error: $error'),
        ),
      ),
    );
  }
}
