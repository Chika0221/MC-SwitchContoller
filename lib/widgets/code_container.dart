// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CodeContainer extends HookConsumerWidget {
  const CodeContainer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final click = useState(false);

    return FCard(
      // image: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('avatar.png'),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   height: 200,
      // ),
      title: const Text('Gratitude'),
      subtitle: const Text(
        'The quality of being thankful; readiness to show appreciation for and to return kindness.',
      ),
      child: SizedBox(
        height: 48,
        child: (!(click.value))
            ? FButton(
                onPress: () async {
                  click.value = !click.value;
                  showFToast(
                    context: context,
                    title: Text("押したぜ"),
                    duration: Duration(seconds: 2),
                  );

                  Future.delayed(Duration(seconds: 2), () {
                    click.value = !click.value;
                  });
                },
                suffix: Icon(FIcons.send),
                child: const Text('Send'),
              )
            : Center(child: const FProgress(semanticsLabel: "aaa")),
      ),
    );
  }
}
