// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:switch_controller/models/macro.dart';

part 'workflow.freezed.dart';
part 'workflow.g.dart';

@freezed
class Workflow with _$Workflow {
  @JsonSerializable(explicitToJson: true)
  const factory Workflow({
    required String displayName,
    required List<WorkflowAction> actions,
    required WorkflowTrigger trigger,
    @Default(false) bool state,
  }) = _Workflow;

  factory Workflow.fromJson(Map<String, dynamic> json) =>
      _$WorkflowFromJson(json);
}

@freezed
class WorkflowAction with _$WorkflowAction {
  @JsonSerializable(explicitToJson: true)
  const factory WorkflowAction({
    required String actionId,
    required List<String> nextActionIds,
    required String actionName,
    required double positionX,
    required double positionY,
    required ActionType actionType,
    required Macro? macro,
    required Duration? delayDuration,
    required String? message,
  }) = _WorkflowAction;

  factory WorkflowAction.fromJson(Map<String, dynamic> json) =>
      _$WorkflowActionFromJson(json);
}

@freezed
class WorkflowTrigger with _$WorkflowTrigger {
  @JsonSerializable(explicitToJson: true)
  const factory WorkflowTrigger({
    required TriggerType type,
    required DateTime? scheduledTime,
  }) = _WorkflowTrigger;

  factory WorkflowTrigger.fromJson(Map<String, dynamic> json) =>
      _$WorkflowTriggerFromJson(json);
}

enum ActionType {
  Start("開始"),
  Macro("マクロ"),
  Delay("遅延"),
  Notification("通知"),
  End("終了");

  final String displayName;

  const ActionType(this.displayName);
}

enum TriggerType { TimeBased, EventBased }
