// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unregistered_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UnregisteredCode _$UnregisteredCodeFromJson(Map<String, dynamic> json) {
  return _UnregisteredCode.fromJson(json);
}

/// @nodoc
mixin _$UnregisteredCode {
  String get name => throw _privateConstructorUsedError;
  CodeRegisteredState? get state => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this UnregisteredCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnregisteredCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnregisteredCodeCopyWith<UnregisteredCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnregisteredCodeCopyWith<$Res> {
  factory $UnregisteredCodeCopyWith(
    UnregisteredCode value,
    $Res Function(UnregisteredCode) then,
  ) = _$UnregisteredCodeCopyWithImpl<$Res, UnregisteredCode>;
  @useResult
  $Res call({String name, CodeRegisteredState? state, String? error});
}

/// @nodoc
class _$UnregisteredCodeCopyWithImpl<$Res, $Val extends UnregisteredCode>
    implements $UnregisteredCodeCopyWith<$Res> {
  _$UnregisteredCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnregisteredCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? state = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as CodeRegisteredState?,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UnregisteredCodeImplCopyWith<$Res>
    implements $UnregisteredCodeCopyWith<$Res> {
  factory _$$UnregisteredCodeImplCopyWith(
    _$UnregisteredCodeImpl value,
    $Res Function(_$UnregisteredCodeImpl) then,
  ) = __$$UnregisteredCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, CodeRegisteredState? state, String? error});
}

/// @nodoc
class __$$UnregisteredCodeImplCopyWithImpl<$Res>
    extends _$UnregisteredCodeCopyWithImpl<$Res, _$UnregisteredCodeImpl>
    implements _$$UnregisteredCodeImplCopyWith<$Res> {
  __$$UnregisteredCodeImplCopyWithImpl(
    _$UnregisteredCodeImpl _value,
    $Res Function(_$UnregisteredCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UnregisteredCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? state = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$UnregisteredCodeImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as CodeRegisteredState?,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnregisteredCodeImpl implements _UnregisteredCode {
  const _$UnregisteredCodeImpl({required this.name, this.state, this.error});

  factory _$UnregisteredCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnregisteredCodeImplFromJson(json);

  @override
  final String name;
  @override
  final CodeRegisteredState? state;
  @override
  final String? error;

  @override
  String toString() {
    return 'UnregisteredCode(name: $name, state: $state, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnregisteredCodeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, state, error);

  /// Create a copy of UnregisteredCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnregisteredCodeImplCopyWith<_$UnregisteredCodeImpl> get copyWith =>
      __$$UnregisteredCodeImplCopyWithImpl<_$UnregisteredCodeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UnregisteredCodeImplToJson(this);
  }
}

abstract class _UnregisteredCode implements UnregisteredCode {
  const factory _UnregisteredCode({
    required final String name,
    final CodeRegisteredState? state,
    final String? error,
  }) = _$UnregisteredCodeImpl;

  factory _UnregisteredCode.fromJson(Map<String, dynamic> json) =
      _$UnregisteredCodeImpl.fromJson;

  @override
  String get name;
  @override
  CodeRegisteredState? get state;
  @override
  String? get error;

  /// Create a copy of UnregisteredCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnregisteredCodeImplCopyWith<_$UnregisteredCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
