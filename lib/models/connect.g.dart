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
      'state': _$ConnectStateEnumMap[instance.state]!,
      'macroQueue': instance.macroQueue,
      'workflowQueue': instance.workflowQueue,
    };

const _$ConnectStateEnumMap = {
  ConnectState.ready: 'ready',
  ConnectState.connected: 'connected',
  ConnectState.offline: 'offline',
};
