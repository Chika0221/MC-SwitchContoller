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
  InfoAction get infoAction => throw _privateConstructorUsedError;
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
    InfoAction infoAction,
    ConnectState state,
    List<Macro> macroQueue,
    List<Workflow> workflowQueue,
  });

  $InfoActionCopyWith<$Res> get infoAction;
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
    Object? infoAction = null,
    Object? state = null,
    Object? macroQueue = null,
    Object? workflowQueue = null,
  }) {
    return _then(
      _value.copyWith(
            hostID:
                freezed == hostID
                    ? _value.hostID
                    : hostID // ignore: cast_nullable_to_non_nullable
                        as String?,
            controllerID:
                freezed == controllerID
                    ? _value.controllerID
                    : controllerID // ignore: cast_nullable_to_non_nullable
                        as String?,
            hostName:
                freezed == hostName
                    ? _value.hostName
                    : hostName // ignore: cast_nullable_to_non_nullable
                        as String?,
            controllerName:
                freezed == controllerName
                    ? _value.controllerName
                    : controllerName // ignore: cast_nullable_to_non_nullable
                        as String?,
            infoAction:
                null == infoAction
                    ? _value.infoAction
                    : infoAction // ignore: cast_nullable_to_non_nullable
                        as InfoAction,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as ConnectState,
            macroQueue:
                null == macroQueue
                    ? _value.macroQueue
                    : macroQueue // ignore: cast_nullable_to_non_nullable
                        as List<Macro>,
            workflowQueue:
                null == workflowQueue
                    ? _value.workflowQueue
                    : workflowQueue // ignore: cast_nullable_to_non_nullable
                        as List<Workflow>,
          )
          as $Val,
    );
  }

  /// Create a copy of Connect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoActionCopyWith<$Res> get infoAction {
    return $InfoActionCopyWith<$Res>(_value.infoAction, (value) {
      return _then(_value.copyWith(infoAction: value) as $Val);
    });
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
    InfoAction infoAction,
    ConnectState state,
    List<Macro> macroQueue,
    List<Workflow> workflowQueue,
  });

  @override
  $InfoActionCopyWith<$Res> get infoAction;
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
    Object? infoAction = null,
    Object? state = null,
    Object? macroQueue = null,
    Object? workflowQueue = null,
  }) {
    return _then(
      _$ConnectImpl(
        hostID:
            freezed == hostID
                ? _value.hostID
                : hostID // ignore: cast_nullable_to_non_nullable
                    as String?,
        controllerID:
            freezed == controllerID
                ? _value.controllerID
                : controllerID // ignore: cast_nullable_to_non_nullable
                    as String?,
        hostName:
            freezed == hostName
                ? _value.hostName
                : hostName // ignore: cast_nullable_to_non_nullable
                    as String?,
        controllerName:
            freezed == controllerName
                ? _value.controllerName
                : controllerName // ignore: cast_nullable_to_non_nullable
                    as String?,
        infoAction:
            null == infoAction
                ? _value.infoAction
                : infoAction // ignore: cast_nullable_to_non_nullable
                    as InfoAction,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as ConnectState,
        macroQueue:
            null == macroQueue
                ? _value._macroQueue
                : macroQueue // ignore: cast_nullable_to_non_nullable
                    as List<Macro>,
        workflowQueue:
            null == workflowQueue
                ? _value._workflowQueue
                : workflowQueue // ignore: cast_nullable_to_non_nullable
                    as List<Workflow>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConnectImpl implements _Connect {
  const _$ConnectImpl({
    required this.hostID,
    required this.controllerID,
    required this.hostName,
    required this.controllerName,
    required this.infoAction,
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
  final InfoAction infoAction;
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
    return 'Connect(hostID: $hostID, controllerID: $controllerID, hostName: $hostName, controllerName: $controllerName, infoAction: $infoAction, state: $state, macroQueue: $macroQueue, workflowQueue: $workflowQueue)';
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
            (identical(other.infoAction, infoAction) ||
                other.infoAction == infoAction) &&
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
    infoAction,
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
    required final InfoAction infoAction,
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
  InfoAction get infoAction;
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

InfoAction _$InfoActionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'buttons':
      return ButtonsType.fromJson(json);
    case 'text':
      return TextType.fromJson(json);
    case 'slider':
      return SliderType.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'InfoAction',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$InfoAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> labels, List<Macro> macros) buttons,
    required TResult Function(String text, Macro macro) text,
    required TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )
    slider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> labels, List<Macro> macros)? buttons,
    TResult? Function(String text, Macro macro)? text,
    TResult? Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> labels, List<Macro> macros)? buttons,
    TResult Function(String text, Macro macro)? text,
    TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ButtonsType value) buttons,
    required TResult Function(TextType value) text,
    required TResult Function(SliderType value) slider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ButtonsType value)? buttons,
    TResult? Function(TextType value)? text,
    TResult? Function(SliderType value)? slider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ButtonsType value)? buttons,
    TResult Function(TextType value)? text,
    TResult Function(SliderType value)? slider,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this InfoAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoActionCopyWith<$Res> {
  factory $InfoActionCopyWith(
    InfoAction value,
    $Res Function(InfoAction) then,
  ) = _$InfoActionCopyWithImpl<$Res, InfoAction>;
}

/// @nodoc
class _$InfoActionCopyWithImpl<$Res, $Val extends InfoAction>
    implements $InfoActionCopyWith<$Res> {
  _$InfoActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ButtonsTypeImplCopyWith<$Res> {
  factory _$$ButtonsTypeImplCopyWith(
    _$ButtonsTypeImpl value,
    $Res Function(_$ButtonsTypeImpl) then,
  ) = __$$ButtonsTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> labels, List<Macro> macros});
}

/// @nodoc
class __$$ButtonsTypeImplCopyWithImpl<$Res>
    extends _$InfoActionCopyWithImpl<$Res, _$ButtonsTypeImpl>
    implements _$$ButtonsTypeImplCopyWith<$Res> {
  __$$ButtonsTypeImplCopyWithImpl(
    _$ButtonsTypeImpl _value,
    $Res Function(_$ButtonsTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? labels = null, Object? macros = null}) {
    return _then(
      _$ButtonsTypeImpl(
        labels:
            null == labels
                ? _value._labels
                : labels // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        macros:
            null == macros
                ? _value._macros
                : macros // ignore: cast_nullable_to_non_nullable
                    as List<Macro>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ButtonsTypeImpl implements ButtonsType {
  const _$ButtonsTypeImpl({
    required final List<String> labels,
    required final List<Macro> macros,
    final String? $type,
  }) : _labels = labels,
       _macros = macros,
       $type = $type ?? 'buttons';

  factory _$ButtonsTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonsTypeImplFromJson(json);

  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  final List<Macro> _macros;
  @override
  List<Macro> get macros {
    if (_macros is EqualUnmodifiableListView) return _macros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_macros);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InfoAction.buttons(labels: $labels, macros: $macros)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonsTypeImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            const DeepCollectionEquality().equals(other._macros, _macros));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_labels),
    const DeepCollectionEquality().hash(_macros),
  );

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonsTypeImplCopyWith<_$ButtonsTypeImpl> get copyWith =>
      __$$ButtonsTypeImplCopyWithImpl<_$ButtonsTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> labels, List<Macro> macros) buttons,
    required TResult Function(String text, Macro macro) text,
    required TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )
    slider,
  }) {
    return buttons(labels, macros);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> labels, List<Macro> macros)? buttons,
    TResult? Function(String text, Macro macro)? text,
    TResult? Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
  }) {
    return buttons?.call(labels, macros);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> labels, List<Macro> macros)? buttons,
    TResult Function(String text, Macro macro)? text,
    TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
    required TResult orElse(),
  }) {
    if (buttons != null) {
      return buttons(labels, macros);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ButtonsType value) buttons,
    required TResult Function(TextType value) text,
    required TResult Function(SliderType value) slider,
  }) {
    return buttons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ButtonsType value)? buttons,
    TResult? Function(TextType value)? text,
    TResult? Function(SliderType value)? slider,
  }) {
    return buttons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ButtonsType value)? buttons,
    TResult Function(TextType value)? text,
    TResult Function(SliderType value)? slider,
    required TResult orElse(),
  }) {
    if (buttons != null) {
      return buttons(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonsTypeImplToJson(this);
  }
}

abstract class ButtonsType implements InfoAction {
  const factory ButtonsType({
    required final List<String> labels,
    required final List<Macro> macros,
  }) = _$ButtonsTypeImpl;

  factory ButtonsType.fromJson(Map<String, dynamic> json) =
      _$ButtonsTypeImpl.fromJson;

  List<String> get labels;
  List<Macro> get macros;

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ButtonsTypeImplCopyWith<_$ButtonsTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextTypeImplCopyWith<$Res> {
  factory _$$TextTypeImplCopyWith(
    _$TextTypeImpl value,
    $Res Function(_$TextTypeImpl) then,
  ) = __$$TextTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, Macro macro});

  $MacroCopyWith<$Res> get macro;
}

/// @nodoc
class __$$TextTypeImplCopyWithImpl<$Res>
    extends _$InfoActionCopyWithImpl<$Res, _$TextTypeImpl>
    implements _$$TextTypeImplCopyWith<$Res> {
  __$$TextTypeImplCopyWithImpl(
    _$TextTypeImpl _value,
    $Res Function(_$TextTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? macro = null}) {
    return _then(
      _$TextTypeImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        macro:
            null == macro
                ? _value.macro
                : macro // ignore: cast_nullable_to_non_nullable
                    as Macro,
      ),
    );
  }

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MacroCopyWith<$Res> get macro {
    return $MacroCopyWith<$Res>(_value.macro, (value) {
      return _then(_value.copyWith(macro: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TextTypeImpl implements TextType {
  const _$TextTypeImpl({
    required this.text,
    required this.macro,
    final String? $type,
  }) : $type = $type ?? 'text';

  factory _$TextTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextTypeImplFromJson(json);

  @override
  final String text;
  @override
  final Macro macro;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InfoAction.text(text: $text, macro: $macro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextTypeImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.macro, macro) || other.macro == macro));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, macro);

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextTypeImplCopyWith<_$TextTypeImpl> get copyWith =>
      __$$TextTypeImplCopyWithImpl<_$TextTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> labels, List<Macro> macros) buttons,
    required TResult Function(String text, Macro macro) text,
    required TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )
    slider,
  }) {
    return text(this.text, macro);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> labels, List<Macro> macros)? buttons,
    TResult? Function(String text, Macro macro)? text,
    TResult? Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
  }) {
    return text?.call(this.text, macro);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> labels, List<Macro> macros)? buttons,
    TResult Function(String text, Macro macro)? text,
    TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text, macro);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ButtonsType value) buttons,
    required TResult Function(TextType value) text,
    required TResult Function(SliderType value) slider,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ButtonsType value)? buttons,
    TResult? Function(TextType value)? text,
    TResult? Function(SliderType value)? slider,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ButtonsType value)? buttons,
    TResult Function(TextType value)? text,
    TResult Function(SliderType value)? slider,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextTypeImplToJson(this);
  }
}

abstract class TextType implements InfoAction {
  const factory TextType({
    required final String text,
    required final Macro macro,
  }) = _$TextTypeImpl;

  factory TextType.fromJson(Map<String, dynamic> json) =
      _$TextTypeImpl.fromJson;

  String get text;
  Macro get macro;

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextTypeImplCopyWith<_$TextTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SliderTypeImplCopyWith<$Res> {
  factory _$$SliderTypeImplCopyWith(
    _$SliderTypeImpl value,
    $Res Function(_$SliderTypeImpl) then,
  ) = __$$SliderTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label, double min, double max, double value, Macro macro});

  $MacroCopyWith<$Res> get macro;
}

/// @nodoc
class __$$SliderTypeImplCopyWithImpl<$Res>
    extends _$InfoActionCopyWithImpl<$Res, _$SliderTypeImpl>
    implements _$$SliderTypeImplCopyWith<$Res> {
  __$$SliderTypeImplCopyWithImpl(
    _$SliderTypeImpl _value,
    $Res Function(_$SliderTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? min = null,
    Object? max = null,
    Object? value = null,
    Object? macro = null,
  }) {
    return _then(
      _$SliderTypeImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        min:
            null == min
                ? _value.min
                : min // ignore: cast_nullable_to_non_nullable
                    as double,
        max:
            null == max
                ? _value.max
                : max // ignore: cast_nullable_to_non_nullable
                    as double,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
        macro:
            null == macro
                ? _value.macro
                : macro // ignore: cast_nullable_to_non_nullable
                    as Macro,
      ),
    );
  }

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MacroCopyWith<$Res> get macro {
    return $MacroCopyWith<$Res>(_value.macro, (value) {
      return _then(_value.copyWith(macro: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SliderTypeImpl implements SliderType {
  const _$SliderTypeImpl({
    required this.label,
    required this.min,
    required this.max,
    required this.value,
    required this.macro,
    final String? $type,
  }) : $type = $type ?? 'slider';

  factory _$SliderTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderTypeImplFromJson(json);

  @override
  final String label;
  @override
  final double min;
  @override
  final double max;
  @override
  final double value;
  @override
  final Macro macro;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InfoAction.slider(label: $label, min: $min, max: $max, value: $value, macro: $macro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderTypeImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.macro, macro) || other.macro == macro));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, min, max, value, macro);

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderTypeImplCopyWith<_$SliderTypeImpl> get copyWith =>
      __$$SliderTypeImplCopyWithImpl<_$SliderTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> labels, List<Macro> macros) buttons,
    required TResult Function(String text, Macro macro) text,
    required TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )
    slider,
  }) {
    return slider(label, min, max, value, macro);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> labels, List<Macro> macros)? buttons,
    TResult? Function(String text, Macro macro)? text,
    TResult? Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
  }) {
    return slider?.call(label, min, max, value, macro);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> labels, List<Macro> macros)? buttons,
    TResult Function(String text, Macro macro)? text,
    TResult Function(
      String label,
      double min,
      double max,
      double value,
      Macro macro,
    )?
    slider,
    required TResult orElse(),
  }) {
    if (slider != null) {
      return slider(label, min, max, value, macro);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ButtonsType value) buttons,
    required TResult Function(TextType value) text,
    required TResult Function(SliderType value) slider,
  }) {
    return slider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ButtonsType value)? buttons,
    TResult? Function(TextType value)? text,
    TResult? Function(SliderType value)? slider,
  }) {
    return slider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ButtonsType value)? buttons,
    TResult Function(TextType value)? text,
    TResult Function(SliderType value)? slider,
    required TResult orElse(),
  }) {
    if (slider != null) {
      return slider(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderTypeImplToJson(this);
  }
}

abstract class SliderType implements InfoAction {
  const factory SliderType({
    required final String label,
    required final double min,
    required final double max,
    required final double value,
    required final Macro macro,
  }) = _$SliderTypeImpl;

  factory SliderType.fromJson(Map<String, dynamic> json) =
      _$SliderTypeImpl.fromJson;

  String get label;
  double get min;
  double get max;
  double get value;
  Macro get macro;

  /// Create a copy of InfoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderTypeImplCopyWith<_$SliderTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
