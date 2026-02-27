// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkflowImpl _$$WorkflowImplFromJson(Map<String, dynamic> json) =>
    _$WorkflowImpl(
      displayName: json['displayName'] as String,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => WorkflowAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      trigger: WorkflowTrigger.fromJson(
        json['trigger'] as Map<String, dynamic>,
      ),
      state: json['state'] as bool? ?? false,
    );

Map<String, dynamic> _$$WorkflowImplToJson(_$WorkflowImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'trigger': instance.trigger.toJson(),
      'state': instance.state,
    };

_$WorkflowActionImpl _$$WorkflowActionImplFromJson(Map<String, dynamic> json) =>
    _$WorkflowActionImpl(
      actionId: json['actionId'] as String,
      nextActionIds: (json['nextActionIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      actionName: json['actionName'] as String,
      positionX: (json['positionX'] as num).toDouble(),
      positionY: (json['positionY'] as num).toDouble(),
      actionType: $enumDecode(_$ActionTypeEnumMap, json['actionType']),
      macro: json['macro'] == null
          ? null
          : Macro.fromJson(json['macro'] as Map<String, dynamic>),
      delayDuration: json['delayDuration'] == null
          ? null
          : Duration(microseconds: (json['delayDuration'] as num).toInt()),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$WorkflowActionImplToJson(
  _$WorkflowActionImpl instance,
) => <String, dynamic>{
  'actionId': instance.actionId,
  'nextActionIds': instance.nextActionIds,
  'actionName': instance.actionName,
  'positionX': instance.positionX,
  'positionY': instance.positionY,
  'actionType': _$ActionTypeEnumMap[instance.actionType]!,
  'macro': instance.macro?.toJson(),
  'delayDuration': instance.delayDuration?.inMicroseconds,
  'message': instance.message,
};

const _$ActionTypeEnumMap = {
  ActionType.Start: 'Start',
  ActionType.Macro: 'Macro',
  ActionType.Delay: 'Delay',
  ActionType.Notification: 'Notification',
  ActionType.End: 'End',
};

_$WorkflowTriggerImpl _$$WorkflowTriggerImplFromJson(
  Map<String, dynamic> json,
) => _$WorkflowTriggerImpl(
  type: $enumDecode(_$TriggerTypeEnumMap, json['type']),
  scheduledTime: json['scheduledTime'] == null
      ? null
      : DateTime.parse(json['scheduledTime'] as String),
);

Map<String, dynamic> _$$WorkflowTriggerImplToJson(
  _$WorkflowTriggerImpl instance,
) => <String, dynamic>{
  'type': _$TriggerTypeEnumMap[instance.type]!,
  'scheduledTime': instance.scheduledTime?.toIso8601String(),
};

const _$TriggerTypeEnumMap = {
  TriggerType.TimeBased: 'TimeBased',
  TriggerType.EventBased: 'EventBased',
};
