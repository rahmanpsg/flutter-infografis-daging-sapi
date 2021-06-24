// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'errorHandling_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorHandlingModelTearOff {
  const _$ErrorHandlingModelTearOff();

  $_ErrorHandlingModel call({required bool status, required String value}) {
    return $_ErrorHandlingModel(
      status: status,
      value: value,
    );
  }
}

/// @nodoc
const $ErrorHandlingModel = _$ErrorHandlingModelTearOff();

/// @nodoc
mixin _$ErrorHandlingModel {
  bool get status => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorHandlingModelCopyWith<ErrorHandlingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorHandlingModelCopyWith<$Res> {
  factory $ErrorHandlingModelCopyWith(
          ErrorHandlingModel value, $Res Function(ErrorHandlingModel) then) =
      _$ErrorHandlingModelCopyWithImpl<$Res>;
  $Res call({bool status, String value});
}

/// @nodoc
class _$ErrorHandlingModelCopyWithImpl<$Res>
    implements $ErrorHandlingModelCopyWith<$Res> {
  _$ErrorHandlingModelCopyWithImpl(this._value, this._then);

  final ErrorHandlingModel _value;
  // ignore: unused_field
  final $Res Function(ErrorHandlingModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $$_ErrorHandlingModelCopyWith<$Res>
    implements $ErrorHandlingModelCopyWith<$Res> {
  factory $$_ErrorHandlingModelCopyWith($_ErrorHandlingModel value,
          $Res Function($_ErrorHandlingModel) then) =
      _$$_ErrorHandlingModelCopyWithImpl<$Res>;
  @override
  $Res call({bool status, String value});
}

/// @nodoc
class _$$_ErrorHandlingModelCopyWithImpl<$Res>
    extends _$ErrorHandlingModelCopyWithImpl<$Res>
    implements $$_ErrorHandlingModelCopyWith<$Res> {
  _$$_ErrorHandlingModelCopyWithImpl(
      $_ErrorHandlingModel _value, $Res Function($_ErrorHandlingModel) _then)
      : super(_value, (v) => _then(v as $_ErrorHandlingModel));

  @override
  $_ErrorHandlingModel get _value => super._value as $_ErrorHandlingModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? value = freezed,
  }) {
    return _then($_ErrorHandlingModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$_ErrorHandlingModel implements $_ErrorHandlingModel {
  const _$$_ErrorHandlingModel({required this.status, required this.value});

  @override
  final bool status;
  @override
  final String value;

  @override
  String toString() {
    return 'ErrorHandlingModel(status: $status, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is $_ErrorHandlingModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $$_ErrorHandlingModelCopyWith<$_ErrorHandlingModel> get copyWith =>
      _$$_ErrorHandlingModelCopyWithImpl<$_ErrorHandlingModel>(
          this, _$identity);
}

abstract class $_ErrorHandlingModel implements ErrorHandlingModel {
  const factory $_ErrorHandlingModel(
      {required bool status, required String value}) = _$$_ErrorHandlingModel;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $$_ErrorHandlingModelCopyWith<$_ErrorHandlingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
