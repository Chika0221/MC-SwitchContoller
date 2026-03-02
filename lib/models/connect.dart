// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:switch_controller/models/macro.dart';
import 'package:switch_controller/models/workflow.dart';

part 'connect.freezed.dart';
part 'connect.g.dart';

@freezed
class Connect with _$Connect {
  const factory Connect({
    required String? hostID,
    required String? controllerID,
    required String? hostName,
    required String? controllerName,
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
  const factory InfoAction.buttons({
    required List<String> labels,
    required List<Macro> macros,
  }) = Buttons;
  const factory InfoAction.text({required String text, required Macro macro}) =
      Text;
  const factory InfoAction.slider({
    required String label,
    required double min,
    required double max,
    required double value,
    required Macro macro,
  }) = Slider;

  factory InfoAction.fromJson(Map<String, dynamic> json) =>
      _$InfoActionFromJson(json);
}

enum InfoActionType { buttons, text, slider }
