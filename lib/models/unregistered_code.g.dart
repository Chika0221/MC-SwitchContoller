// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unregistered_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnregisteredCodeImpl _$$UnregisteredCodeImplFromJson(
  Map<String, dynamic> json,
) => _$UnregisteredCodeImpl(
  name: json['name'] as String,
  state: $enumDecodeNullable(_$CodeRegisteredStateEnumMap, json['state']),
  error: json['error'] as String?,
);

Map<String, dynamic> _$$UnregisteredCodeImplToJson(
  _$UnregisteredCodeImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'state': _$CodeRegisteredStateEnumMap[instance.state],
  'error': instance.error,
};

const _$CodeRegisteredStateEnumMap = {
  CodeRegisteredState.reading: 'reading',
  CodeRegisteredState.error: 'error',
  CodeRegisteredState.done: 'done',
  CodeRegisteredState.none: 'none',
};
