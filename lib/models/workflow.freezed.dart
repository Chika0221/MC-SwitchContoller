// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workflow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Workflow _$WorkflowFromJson(Map<String, dynamic> json) {
  return _Workflow.fromJson(json);
}

/// @nodoc
mixin _$Workflow {
  String get displayName => throw _privateConstructorUsedError;
  List<WorkflowAction> get actions => throw _privateConstructorUsedError;
  WorkflowTrigger get trigger => throw _privateConstructorUsedError;
  bool get state => throw _privateConstructorUsedError;

  /// Serializes this Workflow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Workflow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkflowCopyWith<Workflow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowCopyWith<$Res> {
  factory $WorkflowCopyWith(Workflow value, $Res Function(Workflow) then) =
      _$WorkflowCopyWithImpl<$Res, Workflow>;
  @useResult
  $Res call({
    String displayName,
    List<WorkflowAction> actions,
    WorkflowTrigger trigger,
    bool state,
  });

  $WorkflowTriggerCopyWith<$Res> get trigger;
}

/// @nodoc
class _$WorkflowCopyWithImpl<$Res, $Val extends Workflow>
    implements $WorkflowCopyWith<$Res> {
  _$WorkflowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Workflow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? actions = null,
    Object? trigger = null,
    Object? state = null,
  }) {
    return _then(
      _value.copyWith(
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            actions: null == actions
                ? _value.actions
                : actions // ignore: cast_nullable_to_non_nullable
                      as List<WorkflowAction>,
            trigger: null == trigger
                ? _value.trigger
                : trigger // ignore: cast_nullable_to_non_nullable
                      as WorkflowTrigger,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of Workflow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkflowTriggerCopyWith<$Res> get trigger {
    return $WorkflowTriggerCopyWith<$Res>(_value.trigger, (value) {
      return _then(_value.copyWith(trigger: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkflowImplCopyWith<$Res>
    implements $WorkflowCopyWith<$Res> {
  factory _$$WorkflowImplCopyWith(
    _$WorkflowImpl value,
    $Res Function(_$WorkflowImpl) then,
  ) = __$$WorkflowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String displayName,
    List<WorkflowAction> actions,
    WorkflowTrigger trigger,
    bool state,
  });

  @override
  $WorkflowTriggerCopyWith<$Res> get trigger;
}

/// @nodoc
class __$$WorkflowImplCopyWithImpl<$Res>
    extends _$WorkflowCopyWithImpl<$Res, _$WorkflowImpl>
    implements _$$WorkflowImplCopyWith<$Res> {
  __$$WorkflowImplCopyWithImpl(
    _$WorkflowImpl _value,
    $Res Function(_$WorkflowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Workflow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? actions = null,
    Object? trigger = null,
    Object? state = null,
  }) {
    return _then(
      _$WorkflowImpl(
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        actions: null == actions
            ? _value._actions
            : actions // ignore: cast_nullable_to_non_nullable
                  as List<WorkflowAction>,
        trigger: null == trigger
            ? _value.trigger
            : trigger // ignore: cast_nullable_to_non_nullable
                  as WorkflowTrigger,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkflowImpl implements _Workflow {
  const _$WorkflowImpl({
    required this.displayName,
    required final List<WorkflowAction> actions,
    required this.trigger,
    this.state = false,
  }) : _actions = actions;

  factory _$WorkflowImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowImplFromJson(json);

  @override
  final String displayName;
  final List<WorkflowAction> _actions;
  @override
  List<WorkflowAction> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  final WorkflowTrigger trigger;
  @override
  @JsonKey()
  final bool state;

  @override
  String toString() {
    return 'Workflow(displayName: $displayName, actions: $actions, trigger: $trigger, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    displayName,
    const DeepCollectionEquality().hash(_actions),
    trigger,
    state,
  );

  /// Create a copy of Workflow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowImplCopyWith<_$WorkflowImpl> get copyWith =>
      __$$WorkflowImplCopyWithImpl<_$WorkflowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowImplToJson(this);
  }
}

abstract class _Workflow implements Workflow {
  const factory _Workflow({
    required final String displayName,
    required final List<WorkflowAction> actions,
    required final WorkflowTrigger trigger,
    final bool state,
  }) = _$WorkflowImpl;

  factory _Workflow.fromJson(Map<String, dynamic> json) =
      _$WorkflowImpl.fromJson;

  @override
  String get displayName;
  @override
  List<WorkflowAction> get actions;
  @override
  WorkflowTrigger get trigger;
  @override
  bool get state;

  /// Create a copy of Workflow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkflowImplCopyWith<_$WorkflowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkflowAction _$WorkflowActionFromJson(Map<String, dynamic> json) {
  return _WorkflowAction.fromJson(json);
}

/// @nodoc
mixin _$WorkflowAction {
  String get actionId => throw _privateConstructorUsedError;
  List<String> get nextActionIds => throw _privateConstructorUsedError;
  String get actionName => throw _privateConstructorUsedError;
  double get positionX => throw _privateConstructorUsedError;
  double get positionY => throw _privateConstructorUsedError;
  ActionType get actionType => throw _privateConstructorUsedError;
  Macro? get macro => throw _privateConstructorUsedError;
  Duration? get delayDuration => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this WorkflowAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkflowAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkflowActionCopyWith<WorkflowAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowActionCopyWith<$Res> {
  factory $WorkflowActionCopyWith(
    WorkflowAction value,
    $Res Function(WorkflowAction) then,
  ) = _$WorkflowActionCopyWithImpl<$Res, WorkflowAction>;
  @useResult
  $Res call({
    String actionId,
    List<String> nextActionIds,
    String actionName,
    double positionX,
    double positionY,
    ActionType actionType,
    Macro? macro,
    Duration? delayDuration,
    String? message,
  });

  $MacroCopyWith<$Res>? get macro;
}

/// @nodoc
class _$WorkflowActionCopyWithImpl<$Res, $Val extends WorkflowAction>
    implements $WorkflowActionCopyWith<$Res> {
  _$WorkflowActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkflowAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionId = null,
    Object? nextActionIds = null,
    Object? actionName = null,
    Object? positionX = null,
    Object? positionY = null,
    Object? actionType = null,
    Object? macro = freezed,
    Object? delayDuration = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            actionId: null == actionId
                ? _value.actionId
                : actionId // ignore: cast_nullable_to_non_nullable
                      as String,
            nextActionIds: null == nextActionIds
                ? _value.nextActionIds
                : nextActionIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            actionName: null == actionName
                ? _value.actionName
                : actionName // ignore: cast_nullable_to_non_nullable
                      as String,
            positionX: null == positionX
                ? _value.positionX
                : positionX // ignore: cast_nullable_to_non_nullable
                      as double,
            positionY: null == positionY
                ? _value.positionY
                : positionY // ignore: cast_nullable_to_non_nullable
                      as double,
            actionType: null == actionType
                ? _value.actionType
                : actionType // ignore: cast_nullable_to_non_nullable
                      as ActionType,
            macro: freezed == macro
                ? _value.macro
                : macro // ignore: cast_nullable_to_non_nullable
                      as Macro?,
            delayDuration: freezed == delayDuration
                ? _value.delayDuration
                : delayDuration // ignore: cast_nullable_to_non_nullable
                      as Duration?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of WorkflowAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MacroCopyWith<$Res>? get macro {
    if (_value.macro == null) {
      return null;
    }

    return $MacroCopyWith<$Res>(_value.macro!, (value) {
      return _then(_value.copyWith(macro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkflowActionImplCopyWith<$Res>
    implements $WorkflowActionCopyWith<$Res> {
  factory _$$WorkflowActionImplCopyWith(
    _$WorkflowActionImpl value,
    $Res Function(_$WorkflowActionImpl) then,
  ) = __$$WorkflowActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String actionId,
    List<String> nextActionIds,
    String actionName,
    double positionX,
    double positionY,
    ActionType actionType,
    Macro? macro,
    Duration? delayDuration,
    String? message,
  });

  @override
  $MacroCopyWith<$Res>? get macro;
}

/// @nodoc
class __$$WorkflowActionImplCopyWithImpl<$Res>
    extends _$WorkflowActionCopyWithImpl<$Res, _$WorkflowActionImpl>
    implements _$$WorkflowActionImplCopyWith<$Res> {
  __$$WorkflowActionImplCopyWithImpl(
    _$WorkflowActionImpl _value,
    $Res Function(_$WorkflowActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkflowAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionId = null,
    Object? nextActionIds = null,
    Object? actionName = null,
    Object? positionX = null,
    Object? positionY = null,
    Object? actionType = null,
    Object? macro = freezed,
    Object? delayDuration = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$WorkflowActionImpl(
        actionId: null == actionId
            ? _value.actionId
            : actionId // ignore: cast_nullable_to_non_nullable
                  as String,
        nextActionIds: null == nextActionIds
            ? _value._nextActionIds
            : nextActionIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        actionName: null == actionName
            ? _value.actionName
            : actionName // ignore: cast_nullable_to_non_nullable
                  as String,
        positionX: null == positionX
            ? _value.positionX
            : positionX // ignore: cast_nullable_to_non_nullable
                  as double,
        positionY: null == positionY
            ? _value.positionY
            : positionY // ignore: cast_nullable_to_non_nullable
                  as double,
        actionType: null == actionType
            ? _value.actionType
            : actionType // ignore: cast_nullable_to_non_nullable
                  as ActionType,
        macro: freezed == macro
            ? _value.macro
            : macro // ignore: cast_nullable_to_non_nullable
                  as Macro?,
        delayDuration: freezed == delayDuration
            ? _value.delayDuration
            : delayDuration // ignore: cast_nullable_to_non_nullable
                  as Duration?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkflowActionImpl implements _WorkflowAction {
  const _$WorkflowActionImpl({
    required this.actionId,
    required final List<String> nextActionIds,
    required this.actionName,
    required this.positionX,
    required this.positionY,
    required this.actionType,
    required this.macro,
    required this.delayDuration,
    required this.message,
  }) : _nextActionIds = nextActionIds;

  factory _$WorkflowActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowActionImplFromJson(json);

  @override
  final String actionId;
  final List<String> _nextActionIds;
  @override
  List<String> get nextActionIds {
    if (_nextActionIds is EqualUnmodifiableListView) return _nextActionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nextActionIds);
  }

  @override
  final String actionName;
  @override
  final double positionX;
  @override
  final double positionY;
  @override
  final ActionType actionType;
  @override
  final Macro? macro;
  @override
  final Duration? delayDuration;
  @override
  final String? message;

  @override
  String toString() {
    return 'WorkflowAction(actionId: $actionId, nextActionIds: $nextActionIds, actionName: $actionName, positionX: $positionX, positionY: $positionY, actionType: $actionType, macro: $macro, delayDuration: $delayDuration, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowActionImpl &&
            (identical(other.actionId, actionId) ||
                other.actionId == actionId) &&
            const DeepCollectionEquality().equals(
              other._nextActionIds,
              _nextActionIds,
            ) &&
            (identical(other.actionName, actionName) ||
                other.actionName == actionName) &&
            (identical(other.positionX, positionX) ||
                other.positionX == positionX) &&
            (identical(other.positionY, positionY) ||
                other.positionY == positionY) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.macro, macro) || other.macro == macro) &&
            (identical(other.delayDuration, delayDuration) ||
                other.delayDuration == delayDuration) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    actionId,
    const DeepCollectionEquality().hash(_nextActionIds),
    actionName,
    positionX,
    positionY,
    actionType,
    macro,
    delayDuration,
    message,
  );

  /// Create a copy of WorkflowAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowActionImplCopyWith<_$WorkflowActionImpl> get copyWith =>
      __$$WorkflowActionImplCopyWithImpl<_$WorkflowActionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowActionImplToJson(this);
  }
}

abstract class _WorkflowAction implements WorkflowAction {
  const factory _WorkflowAction({
    required final String actionId,
    required final List<String> nextActionIds,
    required final String actionName,
    required final double positionX,
    required final double positionY,
    required final ActionType actionType,
    required final Macro? macro,
    required final Duration? delayDuration,
    required final String? message,
  }) = _$WorkflowActionImpl;

  factory _WorkflowAction.fromJson(Map<String, dynamic> json) =
      _$WorkflowActionImpl.fromJson;

  @override
  String get actionId;
  @override
  List<String> get nextActionIds;
  @override
  String get actionName;
  @override
  double get positionX;
  @override
  double get positionY;
  @override
  ActionType get actionType;
  @override
  Macro? get macro;
  @override
  Duration? get delayDuration;
  @override
  String? get message;

  /// Create a copy of WorkflowAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkflowActionImplCopyWith<_$WorkflowActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkflowTrigger _$WorkflowTriggerFromJson(Map<String, dynamic> json) {
  return _WorkflowTrigger.fromJson(json);
}

/// @nodoc
mixin _$WorkflowTrigger {
  TriggerType get type => throw _privateConstructorUsedError;
  DateTime? get scheduledTime => throw _privateConstructorUsedError;

  /// Serializes this WorkflowTrigger to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkflowTrigger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkflowTriggerCopyWith<WorkflowTrigger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowTriggerCopyWith<$Res> {
  factory $WorkflowTriggerCopyWith(
    WorkflowTrigger value,
    $Res Function(WorkflowTrigger) then,
  ) = _$WorkflowTriggerCopyWithImpl<$Res, WorkflowTrigger>;
  @useResult
  $Res call({TriggerType type, DateTime? scheduledTime});
}

/// @nodoc
class _$WorkflowTriggerCopyWithImpl<$Res, $Val extends WorkflowTrigger>
    implements $WorkflowTriggerCopyWith<$Res> {
  _$WorkflowTriggerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkflowTrigger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? scheduledTime = freezed}) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as TriggerType,
            scheduledTime: freezed == scheduledTime
                ? _value.scheduledTime
                : scheduledTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkflowTriggerImplCopyWith<$Res>
    implements $WorkflowTriggerCopyWith<$Res> {
  factory _$$WorkflowTriggerImplCopyWith(
    _$WorkflowTriggerImpl value,
    $Res Function(_$WorkflowTriggerImpl) then,
  ) = __$$WorkflowTriggerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TriggerType type, DateTime? scheduledTime});
}

/// @nodoc
class __$$WorkflowTriggerImplCopyWithImpl<$Res>
    extends _$WorkflowTriggerCopyWithImpl<$Res, _$WorkflowTriggerImpl>
    implements _$$WorkflowTriggerImplCopyWith<$Res> {
  __$$WorkflowTriggerImplCopyWithImpl(
    _$WorkflowTriggerImpl _value,
    $Res Function(_$WorkflowTriggerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkflowTrigger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? scheduledTime = freezed}) {
    return _then(
      _$WorkflowTriggerImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as TriggerType,
        scheduledTime: freezed == scheduledTime
            ? _value.scheduledTime
            : scheduledTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkflowTriggerImpl implements _WorkflowTrigger {
  const _$WorkflowTriggerImpl({
    required this.type,
    required this.scheduledTime,
  });

  factory _$WorkflowTriggerImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowTriggerImplFromJson(json);

  @override
  final TriggerType type;
  @override
  final DateTime? scheduledTime;

  @override
  String toString() {
    return 'WorkflowTrigger(type: $type, scheduledTime: $scheduledTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowTriggerImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.scheduledTime, scheduledTime) ||
                other.scheduledTime == scheduledTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, scheduledTime);

  /// Create a copy of WorkflowTrigger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowTriggerImplCopyWith<_$WorkflowTriggerImpl> get copyWith =>
      __$$WorkflowTriggerImplCopyWithImpl<_$WorkflowTriggerImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowTriggerImplToJson(this);
  }
}

abstract class _WorkflowTrigger implements WorkflowTrigger {
  const factory _WorkflowTrigger({
    required final TriggerType type,
    required final DateTime? scheduledTime,
  }) = _$WorkflowTriggerImpl;

  factory _WorkflowTrigger.fromJson(Map<String, dynamic> json) =
      _$WorkflowTriggerImpl.fromJson;

  @override
  TriggerType get type;
  @override
  DateTime? get scheduledTime;

  /// Create a copy of WorkflowTrigger
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkflowTriggerImplCopyWith<_$WorkflowTriggerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
