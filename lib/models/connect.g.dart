// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectImpl _$$ConnectImplFromJson(Map<String, dynamic> json) =>
    _$ConnectImpl(
      hostID: json['hostID'] as String?,
      controllerID: json['controllerID'] as String?,
      hostName: json['hostName'] as String?,
      controllerName: json['controllerName'] as String?,
      infoAction: InfoAction.fromJson(
        json['infoAction'] as Map<String, dynamic>,
      ),
      state:
          $enumDecodeNullable(_$ConnectStateEnumMap, json['state']) ??
          ConnectState.ready,
      macroQueue:
          (json['macroQueue'] as List<dynamic>?)
              ?.map((e) => Macro.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Macro>[],
      workflowQueue:
          (json['workflowQueue'] as List<dynamic>?)
              ?.map((e) => Workflow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Workflow>[],
    );

Map<String, dynamic> _$$ConnectImplToJson(_$ConnectImpl instance) =>
    <String, dynamic>{
      'hostID': instance.hostID,
      'controllerID': instance.controllerID,
      'hostName': instance.hostName,
      'controllerName': instance.controllerName,
      'infoAction': instance.infoAction,
      'state': _$ConnectStateEnumMap[instance.state]!,
      'macroQueue': instance.macroQueue,
      'workflowQueue': instance.workflowQueue,
    };

const _$ConnectStateEnumMap = {
  ConnectState.ready: 'ready',
  ConnectState.connected: 'connected',
  ConnectState.offline: 'offline',
};

_$ButtonsImpl _$$ButtonsImplFromJson(Map<String, dynamic> json) =>
    _$ButtonsImpl(
      labels: (json['labels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      macros: (json['macros'] as List<dynamic>)
          .map((e) => Macro.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ButtonsImplToJson(_$ButtonsImpl instance) =>
    <String, dynamic>{
      'labels': instance.labels,
      'macros': instance.macros,
      'runtimeType': instance.$type,
    };

_$TextImpl _$$TextImplFromJson(Map<String, dynamic> json) => _$TextImpl(
  text: json['text'] as String,
  macro: Macro.fromJson(json['macro'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$TextImplToJson(_$TextImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'macro': instance.macro,
      'runtimeType': instance.$type,
    };

_$SliderImpl _$$SliderImplFromJson(Map<String, dynamic> json) => _$SliderImpl(
  label: json['label'] as String,
  min: (json['min'] as num).toDouble(),
  max: (json['max'] as num).toDouble(),
  value: (json['value'] as num).toDouble(),
  macro: Macro.fromJson(json['macro'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$SliderImplToJson(_$SliderImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'min': instance.min,
      'max': instance.max,
      'value': instance.value,
      'macro': instance.macro,
      'runtimeType': instance.$type,
    };
