// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:switch_controller/models/macro.dart';
import 'package:switch_controller/models/workflow.dart';

part 'connect.freezed.dart';
part 'connect.g.dart';

@freezed
class Connect with _$Connect {
  @JsonSerializable(explicitToJson: true)
  const factory Connect({
    required String? hostID,
    required String? controllerID,
    required String? hostName,
    required String? controllerName,
    required InfoAction infoAction,
    @Default(ConnectState.ready) ConnectState state,
    @Default(<Macro>[]) List<Macro> macroQueue,
    @Default(<Workflow>[]) List<Workflow> workflowQueue,
  }) = _Connect;

  factory Connect.fromJson(Map<String, dynamic> json) =>
      _$ConnectFromJson(json);
}

enum ConnectState { ready, connected, offline }

@freezed
class InfoAction with _$InfoAction {
  @JsonSerializable(explicitToJson: true)
  const factory InfoAction.buttons({
    required List<String> labels,
    required List<Macro> macros,
  }) = ButtonsType;

  @JsonSerializable(explicitToJson: true)
  const factory InfoAction.text({required String text, required Macro macro}) =
      TextType;

  @JsonSerializable(explicitToJson: true)
  const factory InfoAction.slider({
    required String label,
    required double min,
    required double max,
    required double value,
    required Macro macro,
  }) = SliderType;

  factory InfoAction.fromJson(Map<String, dynamic> json) =>
      _$InfoActionFromJson(json);
}

enum InfoActionType { buttons, text, slider }
