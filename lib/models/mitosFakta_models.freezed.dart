// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mitosFakta_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MitosFaktaModel _$MitosFaktaModelFromJson(Map<String, dynamic> json) {
  return $_MitosFaktaModel.fromJson(json);
}

/// @nodoc
class _$MitosFaktaModelTearOff {
  const _$MitosFaktaModelTearOff();

  $_MitosFaktaModel call(
      {required int id,
      required Map<dynamic, dynamic> mitos,
      required Map<dynamic, dynamic> fakta}) {
    return $_MitosFaktaModel(
      id: id,
      mitos: mitos,
      fakta: fakta,
    );
  }

  MitosFaktaModel fromJson(Map<String, Object> json) {
    return MitosFaktaModel.fromJson(json);
  }
}

/// @nodoc
const $MitosFaktaModel = _$MitosFaktaModelTearOff();

/// @nodoc
mixin _$MitosFaktaModel {
  int get id => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get mitos => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get fakta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MitosFaktaModelCopyWith<MitosFaktaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MitosFaktaModelCopyWith<$Res> {
  factory $MitosFaktaModelCopyWith(
          MitosFaktaModel value, $Res Function(MitosFaktaModel) then) =
      _$MitosFaktaModelCopyWithImpl<$Res>;
  $Res call({int id, Map<dynamic, dynamic> mitos, Map<dynamic, dynamic> fakta});
}

/// @nodoc
class _$MitosFaktaModelCopyWithImpl<$Res>
    implements $MitosFaktaModelCopyWith<$Res> {
  _$MitosFaktaModelCopyWithImpl(this._value, this._then);

  final MitosFaktaModel _value;
  // ignore: unused_field
  final $Res Function(MitosFaktaModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mitos = freezed,
    Object? fakta = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mitos: mitos == freezed
          ? _value.mitos
          : mitos // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      fakta: fakta == freezed
          ? _value.fakta
          : fakta // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
abstract class $$_MitosFaktaModelCopyWith<$Res>
    implements $MitosFaktaModelCopyWith<$Res> {
  factory $$_MitosFaktaModelCopyWith(
          $_MitosFaktaModel value, $Res Function($_MitosFaktaModel) then) =
      _$$_MitosFaktaModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, Map<dynamic, dynamic> mitos, Map<dynamic, dynamic> fakta});
}

/// @nodoc
class _$$_MitosFaktaModelCopyWithImpl<$Res>
    extends _$MitosFaktaModelCopyWithImpl<$Res>
    implements $$_MitosFaktaModelCopyWith<$Res> {
  _$$_MitosFaktaModelCopyWithImpl(
      $_MitosFaktaModel _value, $Res Function($_MitosFaktaModel) _then)
      : super(_value, (v) => _then(v as $_MitosFaktaModel));

  @override
  $_MitosFaktaModel get _value => super._value as $_MitosFaktaModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? mitos = freezed,
    Object? fakta = freezed,
  }) {
    return _then($_MitosFaktaModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mitos: mitos == freezed
          ? _value.mitos
          : mitos // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      fakta: fakta == freezed
          ? _value.fakta
          : fakta // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_MitosFaktaModel implements $_MitosFaktaModel {
  const _$$_MitosFaktaModel(
      {required this.id, required this.mitos, required this.fakta});

  factory _$$_MitosFaktaModel.fromJson(Map<String, dynamic> json) =>
      _$_$$_MitosFaktaModelFromJson(json);

  @override
  final int id;
  @override
  final Map<dynamic, dynamic> mitos;
  @override
  final Map<dynamic, dynamic> fakta;

  @override
  String toString() {
    return 'MitosFaktaModel(id: $id, mitos: $mitos, fakta: $fakta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is $_MitosFaktaModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mitos, mitos) ||
                const DeepCollectionEquality().equals(other.mitos, mitos)) &&
            (identical(other.fakta, fakta) ||
                const DeepCollectionEquality().equals(other.fakta, fakta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mitos) ^
      const DeepCollectionEquality().hash(fakta);

  @JsonKey(ignore: true)
  @override
  $$_MitosFaktaModelCopyWith<$_MitosFaktaModel> get copyWith =>
      _$$_MitosFaktaModelCopyWithImpl<$_MitosFaktaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$$_MitosFaktaModelToJson(this);
  }
}

abstract class $_MitosFaktaModel implements MitosFaktaModel {
  const factory $_MitosFaktaModel(
      {required int id,
      required Map<dynamic, dynamic> mitos,
      required Map<dynamic, dynamic> fakta}) = _$$_MitosFaktaModel;

  factory $_MitosFaktaModel.fromJson(Map<String, dynamic> json) =
      _$$_MitosFaktaModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get mitos => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get fakta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $$_MitosFaktaModelCopyWith<$_MitosFaktaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
