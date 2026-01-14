// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrared_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InfraredCode _$InfraredCodeFromJson(Map<String, dynamic> json) {
  return _InfraredCode.fromJson(json);
}

/// @nodoc
mixin _$InfraredCode {
  String get name => throw _privateConstructorUsedError;
  bool get state => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this InfraredCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfraredCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfraredCodeCopyWith<InfraredCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfraredCodeCopyWith<$Res> {
  factory $InfraredCodeCopyWith(
    InfraredCode value,
    $Res Function(InfraredCode) then,
  ) = _$InfraredCodeCopyWithImpl<$Res, InfraredCode>;
  @useResult
  $Res call({String name, bool state, String code});
}

/// @nodoc
class _$InfraredCodeCopyWithImpl<$Res, $Val extends InfraredCode>
    implements $InfraredCodeCopyWith<$Res> {
  _$InfraredCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfraredCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? state = null, Object? code = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as bool,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InfraredCodeImplCopyWith<$Res>
    implements $InfraredCodeCopyWith<$Res> {
  factory _$$InfraredCodeImplCopyWith(
    _$InfraredCodeImpl value,
    $Res Function(_$InfraredCodeImpl) then,
  ) = __$$InfraredCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool state, String code});
}

/// @nodoc
class __$$InfraredCodeImplCopyWithImpl<$Res>
    extends _$InfraredCodeCopyWithImpl<$Res, _$InfraredCodeImpl>
    implements _$$InfraredCodeImplCopyWith<$Res> {
  __$$InfraredCodeImplCopyWithImpl(
    _$InfraredCodeImpl _value,
    $Res Function(_$InfraredCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InfraredCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? state = null, Object? code = null}) {
    return _then(
      _$InfraredCodeImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as bool,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InfraredCodeImpl implements _InfraredCode {
  const _$InfraredCodeImpl({
    required this.name,
    required this.state,
    required this.code,
  });

  factory _$InfraredCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfraredCodeImplFromJson(json);

  @override
  final String name;
  @override
  final bool state;
  @override
  final String code;

  @override
  String toString() {
    return 'InfraredCode(name: $name, state: $state, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfraredCodeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, state, code);

  /// Create a copy of InfraredCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfraredCodeImplCopyWith<_$InfraredCodeImpl> get copyWith =>
      __$$InfraredCodeImplCopyWithImpl<_$InfraredCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfraredCodeImplToJson(this);
  }
}

abstract class _InfraredCode implements InfraredCode {
  const factory _InfraredCode({
    required final String name,
    required final bool state,
    required final String code,
  }) = _$InfraredCodeImpl;

  factory _InfraredCode.fromJson(Map<String, dynamic> json) =
      _$InfraredCodeImpl.fromJson;

  @override
  String get name;
  @override
  bool get state;
  @override
  String get code;

  /// Create a copy of InfraredCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfraredCodeImplCopyWith<_$InfraredCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
