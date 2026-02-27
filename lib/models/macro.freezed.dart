// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'macro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Macro _$MacroFromJson(Map<String, dynamic> json) {
  return _Macro.fromJson(json);
}

/// @nodoc
mixin _$Macro {
  String get name => throw _privateConstructorUsedError;
  MacroType get type => throw _privateConstructorUsedError;
  String? get docId => throw _privateConstructorUsedError;
  List<int>? get keys => throw _privateConstructorUsedError;
  String? get appPath => throw _privateConstructorUsedError;
  String? get aiPrompt => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  /// Serializes this Macro to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Macro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MacroCopyWith<Macro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacroCopyWith<$Res> {
  factory $MacroCopyWith(Macro value, $Res Function(Macro) then) =
      _$MacroCopyWithImpl<$Res, Macro>;
  @useResult
  $Res call({
    String name,
    MacroType type,
    String? docId,
    List<int>? keys,
    String? appPath,
    String? aiPrompt,
    String? text,
  });
}

/// @nodoc
class _$MacroCopyWithImpl<$Res, $Val extends Macro>
    implements $MacroCopyWith<$Res> {
  _$MacroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Macro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? docId = freezed,
    Object? keys = freezed,
    Object? appPath = freezed,
    Object? aiPrompt = freezed,
    Object? text = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as MacroType,
            docId: freezed == docId
                ? _value.docId
                : docId // ignore: cast_nullable_to_non_nullable
                      as String?,
            keys: freezed == keys
                ? _value.keys
                : keys // ignore: cast_nullable_to_non_nullable
                      as List<int>?,
            appPath: freezed == appPath
                ? _value.appPath
                : appPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            aiPrompt: freezed == aiPrompt
                ? _value.aiPrompt
                : aiPrompt // ignore: cast_nullable_to_non_nullable
                      as String?,
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MacroImplCopyWith<$Res> implements $MacroCopyWith<$Res> {
  factory _$$MacroImplCopyWith(
    _$MacroImpl value,
    $Res Function(_$MacroImpl) then,
  ) = __$$MacroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    MacroType type,
    String? docId,
    List<int>? keys,
    String? appPath,
    String? aiPrompt,
    String? text,
  });
}

/// @nodoc
class __$$MacroImplCopyWithImpl<$Res>
    extends _$MacroCopyWithImpl<$Res, _$MacroImpl>
    implements _$$MacroImplCopyWith<$Res> {
  __$$MacroImplCopyWithImpl(
    _$MacroImpl _value,
    $Res Function(_$MacroImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Macro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? docId = freezed,
    Object? keys = freezed,
    Object? appPath = freezed,
    Object? aiPrompt = freezed,
    Object? text = freezed,
  }) {
    return _then(
      _$MacroImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as MacroType,
        docId: freezed == docId
            ? _value.docId
            : docId // ignore: cast_nullable_to_non_nullable
                  as String?,
        keys: freezed == keys
            ? _value._keys
            : keys // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
        appPath: freezed == appPath
            ? _value.appPath
            : appPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        aiPrompt: freezed == aiPrompt
            ? _value.aiPrompt
            : aiPrompt // ignore: cast_nullable_to_non_nullable
                  as String?,
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MacroImpl implements _Macro {
  const _$MacroImpl({
    required this.name,
    required this.type,
    this.docId,
    final List<int>? keys,
    this.appPath,
    this.aiPrompt,
    this.text,
  }) : _keys = keys;

  factory _$MacroImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacroImplFromJson(json);

  @override
  final String name;
  @override
  final MacroType type;
  @override
  final String? docId;
  final List<int>? _keys;
  @override
  List<int>? get keys {
    final value = _keys;
    if (value == null) return null;
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? appPath;
  @override
  final String? aiPrompt;
  @override
  final String? text;

  @override
  String toString() {
    return 'Macro(name: $name, type: $type, docId: $docId, keys: $keys, appPath: $appPath, aiPrompt: $aiPrompt, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacroImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.docId, docId) || other.docId == docId) &&
            const DeepCollectionEquality().equals(other._keys, _keys) &&
            (identical(other.appPath, appPath) || other.appPath == appPath) &&
            (identical(other.aiPrompt, aiPrompt) ||
                other.aiPrompt == aiPrompt) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    type,
    docId,
    const DeepCollectionEquality().hash(_keys),
    appPath,
    aiPrompt,
    text,
  );

  /// Create a copy of Macro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MacroImplCopyWith<_$MacroImpl> get copyWith =>
      __$$MacroImplCopyWithImpl<_$MacroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MacroImplToJson(this);
  }
}

abstract class _Macro implements Macro {
  const factory _Macro({
    required final String name,
    required final MacroType type,
    final String? docId,
    final List<int>? keys,
    final String? appPath,
    final String? aiPrompt,
    final String? text,
  }) = _$MacroImpl;

  factory _Macro.fromJson(Map<String, dynamic> json) = _$MacroImpl.fromJson;

  @override
  String get name;
  @override
  MacroType get type;
  @override
  String? get docId;
  @override
  List<int>? get keys;
  @override
  String? get appPath;
  @override
  String? get aiPrompt;
  @override
  String? get text;

  /// Create a copy of Macro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MacroImplCopyWith<_$MacroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
