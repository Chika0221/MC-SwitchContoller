// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'infrared_code.freezed.dart';
part 'infrared_code.g.dart';

@freezed
class InfraredCode with _$InfraredCode {
  const factory InfraredCode({
    required String name,
    required bool state,
    required String code,
  }) = _InfraredCode;

  factory InfraredCode.fromJson(Map<String, dynamic> json) =>
      _$InfraredCodeFromJson(json);
}
