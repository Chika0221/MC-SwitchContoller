// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unregistered_code.freezed.dart';
part 'unregistered_code.g.dart';

@freezed
class UnregisteredCode with _$UnregisteredCode {
  const factory UnregisteredCode({
    required String name,
    CodeRegisteredState? state,
    String? error,
  }) = _UnregisteredCode;

  factory UnregisteredCode.fromJson(Map<String, dynamic> json) =>
      _$UnregisteredCodeFromJson(json);
}

enum CodeRegisteredState { reading, error, done, none }
