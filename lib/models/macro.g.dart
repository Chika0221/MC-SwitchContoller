// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'macro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MacroImpl _$$MacroImplFromJson(Map<String, dynamic> json) => _$MacroImpl(
  name: json['name'] as String,
  type: $enumDecode(_$MacroTypeEnumMap, json['type']),
  docId: json['docId'] as String?,
  keys: (json['keys'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  appPath: json['appPath'] as String?,
  aiPrompt: json['aiPrompt'] as String?,
  text: json['text'] as String?,
);

Map<String, dynamic> _$$MacroImplToJson(_$MacroImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$MacroTypeEnumMap[instance.type]!,
      'docId': instance.docId,
      'keys': instance.keys,
      'appPath': instance.appPath,
      'aiPrompt': instance.aiPrompt,
      'text': instance.text,
    };

const _$MacroTypeEnumMap = {
  MacroType.infrared: 'infrared',
  MacroType.combo: 'combo',
  MacroType.openApp: 'openApp',
  MacroType.text: 'text',
  MacroType.aiTextConvert: 'aiTextConvert',
};
