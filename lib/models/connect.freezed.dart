// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Connect _$ConnectFromJson(Map<String, dynamic> json) {
  return _Connect.fromJson(json);
}

/// @nodoc
mixin _$Connect {
  String? get hostID => throw _privateConstructorUsedError;
  String? get controllerID => throw _privateConstructorUsedError;
  String? get hostName => throw _privateConstructorUsedError;
  String? get controllerName => throw _privateConstructorUsedError;
  ConnectState get state => throw _privateConstructorUsedError;
  List<Macro> get macroQueue => throw _privateConstructorUsedError;
  List<Workflow> get workflowQueue => throw _privateConstructorUsedError;

  /// Serializes this Connect to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Connect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectCopyWith<Connect> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectCopyWith<$Res> {
  factory $ConnectCopyWith(Connect value, $Res Function(Connect) then) =
      _$ConnectCopyWithImpl<$Res, Connect>;
  @useResult
  $Res call({
    String? hostID,
    String? controllerID,
    String? hostName,
    String? controllerName,
    ConnectState state,
    List<Macro> macroQueue,
    List<Workflow> workflowQueue,
  });
}

/// @nodoc
class _$ConnectCopyWithImpl<$Res, $Val extends Connect>
    implements $ConnectCopyWith<$Res> {
  _$ConnectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Connect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostID = freezed,
    Object? controllerID = freezed,
    Object? hostName = freezed,
    Object? controllerName = freezed,
    Object? state = null,
    Object? macroQueue = null,
    Object? workflowQueue = null,
  }) {
    return _then(
      _value.copyWith(
            hostID: freezed == hostID
                ? _value.hostID
                : hostID // ignore: cast_nullable_to_non_nullable
                      as String?,
            controllerID: freezed == controllerID
                ? _value.controllerID
                : controllerID // ignore: cast_nullable_to_non_nullable
                      as String?,
            hostName: freezed == hostName
                ? _value.hostName
                : hostName // ignore: cast_nullable_to_non_nullable
                      as String?,
            controllerName: freezed == controllerName
                ? _value.controllerName
                : controllerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as ConnectState,
            macroQueue: null == macroQueue
                ? _value.macroQueue
                : macroQueue // ignore: cast_nullable_to_non_nullable
                      as List<Macro>,
            workflowQueue: null == workflowQueue
                ? _value.workflowQueue
                : workflowQueue // ignore: cast_nullable_to_non_nullable
                      as List<Workflow>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> implements $ConnectCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
    _$ConnectImpl value,
    $Res Function(_$ConnectImpl) then,
  ) = __$$ConnectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? hostID,
    String? controllerID,
    String? hostName,
    String? controllerName,
    ConnectState state,
    List<Macro> macroQueue,
    List<Workflow> workflowQueue,
  });
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$ConnectCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
    _$ConnectImpl _value,
    $Res Function(_$ConnectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Connect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostID = freezed,
    Object? controllerID = freezed,
    Object? hostName = freezed,
    Object? controllerName = freezed,
    Object? state = null,
    Object? macroQueue = null,
    Object? workflowQueue = null,
  }) {
    return _then(
      _$ConnectImpl(
        hostID: freezed == hostID
            ? _value.hostID
            : hostID // ignore: cast_nullable_to_non_nullable
                  as String?,
        controllerID: freezed == controllerID
            ? _value.controllerID
            : controllerID // ignore: cast_nullable_to_non_nullable
                  as String?,
        hostName: freezed == hostName
            ? _value.hostName
            : hostName // ignore: cast_nullable_to_non_nullable
                  as String?,
        controllerName: freezed == controllerName
            ? _value.controllerName
            : controllerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as ConnectState,
        macroQueue: null == macroQueue
            ? _value._macroQueue
            : macroQueue // ignore: cast_nullable_to_non_nullable
                  as List<Macro>,
        workflowQueue: null == workflowQueue
            ? _value._workflowQueue
            : workflowQueue // ignore: cast_nullable_to_non_nullable
                  as List<Workflow>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectImpl implements _Connect {
  const _$ConnectImpl({
    required this.hostID,
    required this.controllerID,
    required this.hostName,
    required this.controllerName,
    this.state = ConnectState.ready,
    final List<Macro> macroQueue = const <Macro>[],
    final List<Workflow> workflowQueue = const <Workflow>[],
  }) : _macroQueue = macroQueue,
       _workflowQueue = workflowQueue;

  factory _$ConnectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectImplFromJson(json);

  @override
  final String? hostID;
  @override
  final String? controllerID;
  @override
  final String? hostName;
  @override
  final String? controllerName;
  @override
  @JsonKey()
  final ConnectState state;
  final List<Macro> _macroQueue;
  @override
  @JsonKey()
  List<Macro> get macroQueue {
    if (_macroQueue is EqualUnmodifiableListView) return _macroQueue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_macroQueue);
  }

  final List<Workflow> _workflowQueue;
  @override
  @JsonKey()
  List<Workflow> get workflowQueue {
    if (_workflowQueue is EqualUnmodifiableListView) return _workflowQueue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workflowQueue);
  }

  @override
  String toString() {
    return 'Connect(hostID: $hostID, controllerID: $controllerID, hostName: $hostName, controllerName: $controllerName, state: $state, macroQueue: $macroQueue, workflowQueue: $workflowQueue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectImpl &&
            (identical(other.hostID, hostID) || other.hostID == hostID) &&
            (identical(other.controllerID, controllerID) ||
                other.controllerID == controllerID) &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.controllerName, controllerName) ||
                other.controllerName == controllerName) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(
              other._macroQueue,
              _macroQueue,
            ) &&
            const DeepCollectionEquality().equals(
              other._workflowQueue,
              _workflowQueue,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    hostID,
    controllerID,
    hostName,
    controllerName,
    state,
    const DeepCollectionEquality().hash(_macroQueue),
    const DeepCollectionEquality().hash(_workflowQueue),
  );

  /// Create a copy of Connect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      __$$ConnectImplCopyWithImpl<_$ConnectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectImplToJson(this);
  }
}

abstract class _Connect implements Connect {
  const factory _Connect({
    required final String? hostID,
    required final String? controllerID,
    required final String? hostName,
    required final String? controllerName,
    final ConnectState state,
    final List<Macro> macroQueue,
    final List<Workflow> workflowQueue,
  }) = _$ConnectImpl;

  factory _Connect.fromJson(Map<String, dynamic> json) = _$ConnectImpl.fromJson;

  @override
  String? get hostID;
  @override
  String? get controllerID;
  @override
  String? get hostName;
  @override
  String? get controllerName;
  @override
  ConnectState get state;
  @override
  List<Macro> get macroQueue;
  @override
  List<Workflow> get workflowQueue;

  /// Create a copy of Connect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
