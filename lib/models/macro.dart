// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'macro.freezed.dart';
part 'macro.g.dart';

@freezed
class Macro with _$Macro {
  const factory Macro({
    required String name,
    required MacroType type,
    String? docId,
    List<int>? keys,
    String? appPath,
    String? aiPrompt,
    String? text,
  }) = _Macro;

  factory Macro.fromJson(Map<String, dynamic> json) => _$MacroFromJson(json);
}

enum MacroType {
  infrared(
    displayName: "Beam",
    displayLabel: "赤外線",
    displayIcon: Icons.code_rounded,
  ),
  combo(
    displayName: "Com",
    displayLabel: "コンボ",
    displayIcon: Icons.keyboard_rounded,
  ),
  openApp(
    displayName: "App",
    displayLabel: "アプリ起動",
    displayIcon: Icons.open_in_new_rounded,
  ),
  text(
    displayName: "Text",
    displayLabel: "テキスト入力",
    displayIcon: Icons.text_fields_rounded,
  ),
  aiTextConvert(
    displayName: "AI",
    displayLabel: "AIテキスト変換",
    displayIcon: Icons.smart_toy_rounded,
  );

  final String displayName;
  final String displayLabel;
  final IconData displayIcon;
  const MacroType({
    required this.displayName,
    required this.displayLabel,
    required this.displayIcon,
  });
}
