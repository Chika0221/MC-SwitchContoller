// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/infrastructure/providers/firebase_codes_stream_privider.dart';
import 'package:switch_controller/models/infrared_code.dart';

class CodeContainer extends HookConsumerWidget {
  const CodeContainer({super.key, required this.code});

  final InfraredCode code;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FCard(
      title: Text(code.name),
      subtitle: Text(code.code, maxLines: 2, overflow: .ellipsis),
      child: SizedBox(
        height: 48,
        child: (!(code.state))
            ? FButton(
                onPress: () async {
                  final updateCode = code.copyWith(state: true);

                  ref
                      .read(firebaseCodesStreamProvider.notifier)
                      .updateCodes(updateCode);
                  showFToast(
                    context: context,
                    title: Text("コードを送信しました"),
                    duration: Duration(seconds: 2),
                  );
                },
                suffix: Icon(FIcons.send),
                child: const Text('Send'),
              )
            : Center(child: const FProgress()),
      ),
    );
  }
}
