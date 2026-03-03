part of '../dock_page.dart';

class DockInfoZone extends HookConsumerWidget {
  const DockInfoZone({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connect = ref.watch(connectProvider);

    const testConnect = Connect(
      hostID: '',
      controllerID: '',
      hostName: '',
      controllerName: '',
      // infoAction: InfoAction.buttons(
      //   labels: ["こんにちは", "こんばんわ", "こんばんわ", "こんばんわ", "こんばんわ", "こんばんわ"],
      //   macros: [
      //     Macro(name: "テスト入力", type: MacroType.text, text: "テストなんだよ"),
      //     Macro(
      //       name: "博多弁に変換",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "博多弁に変換",
      //     ),
      //     Macro(name: "テスト入力", type: MacroType.text, text: "テストなんだよ"),
      //     Macro(
      //       name: "博多弁に変換",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "博多弁に変換",
      //     ),
      //     Macro(name: "テスト入力", type: MacroType.text, text: "テストなんだよ"),
      //     Macro(
      //       name: "博多弁に変換",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "博多弁に変換",
      //     ),
      //     Macro(name: "テスト01", type: MacroType.text, text: "テスト01"),
      //     Macro(
      //       name: "敬語に変換",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "敬語に変換",
      //     ),
      //     Macro(name: "テスト03", type: MacroType.text, text: "テスト03"),
      //     Macro(
      //       name: "関西弁に変換",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "関西弁に変換",
      //     ),
      //     Macro(name: "テスト05", type: MacroType.text, text: "テスト05"),
      //     Macro(name: "短く要約", type: MacroType.aiTextConvert, aiPrompt: "短く要約"),
      //     Macro(name: "テスト07", type: MacroType.text, text: "テスト07"),
      //     Macro(
      //       name: "絵文字なしで丁寧に",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "絵文字なしで丁寧に",
      //     ),
      //     Macro(name: "テスト09", type: MacroType.text, text: "テスト09"),
      //     Macro(
      //       name: "ビジネス文に整形",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "ビジネス文に整形",
      //     ),
      //     Macro(name: "テスト11", type: MacroType.text, text: "テスト11"),
      //     Macro(
      //       name: "やさしい日本語に",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "やさしい日本語に",
      //     ),
      //     Macro(name: "テスト13", type: MacroType.text, text: "テスト13"),
      //     Macro(
      //       name: "箇条書きに",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "箇条書きに",
      //     ),
      //     Macro(name: "テスト15", type: MacroType.text, text: "テスト15"),
      //     Macro(
      //       name: "ポジティブに言い換え",
      //       type: MacroType.aiTextConvert,
      //       aiPrompt: "ポジティブに言い換え",
      //     ),
      //     Macro(name: "テスト17", type: MacroType.text, text: "テスト17"),
      //     Macro(name: "一文で", type: MacroType.aiTextConvert, aiPrompt: "一文で"),
      //     Macro(name: "テスト19", type: MacroType.text, text: "テスト19"),
      //     Macro(name: "丁寧語に", type: MacroType.aiTextConvert, aiPrompt: "丁寧語に"),
      //   ],
      // ),
      infoAction: InfoAction.slider(
        label: "テストぉ",
        min: 0,
        max: 100,
        value: 50,
        macro: Macro(name: "あ", type: MacroType.text, text: "あ"),
      ),
    );

    return Row(
      mainAxisSize: .max,
      children: [
        Flexible(flex: 2, child: TwoStyleClocks()),
        Flexible(
          flex: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .end,
                children: [
                  ConnectStateContainer(),
                  const SizedBox(width: 4),
                  IconButton.filled(
                    onPressed: () => context.go(RoutePath.sendCode.path),
                    icon: Icon(Icons.exit_to_app_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: DockItemContainer(
                  child: connect == null
                      ? const Text('No device connected')
                      : connect.infoAction.when(
                          buttons: (labels, macros) {
                            return ButtonsBox(macros: macros);
                          },
                          text: (text, macro) {
                            return CopyBox(text: text, macro: macro);
                          },
                          slider: (label, min, max, value, macro) {
                            return SliderBox(
                              min: min,
                              max: max,
                              value: value,
                              label: label,
                              macro: macro,
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
