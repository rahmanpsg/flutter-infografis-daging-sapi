// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'infografis_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfografisModel _$InfografisModelFromJson(Map<String, dynamic> json) {
  return $_InfografisModel.fromJson(json);
}

/// @nodoc
class _$InfografisModelTearOff {
  const _$InfografisModelTearOff();

  $_InfografisModel call(
      {required int id,
      required Map<dynamic, dynamic> nama,
      required Map<dynamic, dynamic> deskripsi}) {
    return $_InfografisModel(
      id: id,
      nama: nama,
      deskripsi: deskripsi,
    );
  }

  InfografisModel fromJson(Map<String, Object> json) {
    return InfografisModel.fromJson(json);
  }
}

/// @nodoc
const $InfografisModel = _$InfografisModelTearOff();

/// @nodoc
mixin _$InfografisModel {
  int get id => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get nama => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get deskripsi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfografisModelCopyWith<InfografisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfografisModelCopyWith<$Res> {
  factory $InfografisModelCopyWith(
          InfografisModel value, $Res Function(InfografisModel) then) =
      _$InfografisModelCopyWithImpl<$Res>;
  $Res call(
      {int id, Map<dynamic, dynamic> nama, Map<dynamic, dynamic> deskripsi});
}

/// @nodoc
class _$InfografisModelCopyWithImpl<$Res>
    implements $InfografisModelCopyWith<$Res> {
  _$InfografisModelCopyWithImpl(this._value, this._then);

  final InfografisModel _value;
  // ignore: unused_field
  final $Res Function(InfografisModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
abstract class $$_InfografisModelCopyWith<$Res>
    implements $InfografisModelCopyWith<$Res> {
  factory $$_InfografisModelCopyWith(
          $_InfografisModel value, $Res Function($_InfografisModel) then) =
      _$$_InfografisModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, Map<dynamic, dynamic> nama, Map<dynamic, dynamic> deskripsi});
}

/// @nodoc
class _$$_InfografisModelCopyWithImpl<$Res>
    extends _$InfografisModelCopyWithImpl<$Res>
    implements $$_InfografisModelCopyWith<$Res> {
  _$$_InfografisModelCopyWithImpl(
      $_InfografisModel _value, $Res Function($_InfografisModel) _then)
      : super(_value, (v) => _then(v as $_InfografisModel));

  @override
  $_InfografisModel get _value => super._value as $_InfografisModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
  }) {
    return _then($_InfografisModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_InfografisModel implements $_InfografisModel {
  const _$$_InfografisModel(
      {required this.id, required this.nama, required this.deskripsi});

  factory _$$_InfografisModel.fromJson(Map<String, dynamic> json) =>
      _$_$$_InfografisModelFromJson(json);

  @override
  final int id;
  @override
  final Map<dynamic, dynamic> nama;
  @override
  final Map<dynamic, dynamic> deskripsi;

  @override
  String toString() {
    return 'InfografisModel(id: $id, nama: $nama, deskripsi: $deskripsi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is $_InfografisModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nama, nama) ||
                const DeepCollectionEquality().equals(other.nama, nama)) &&
            (identical(other.deskripsi, deskripsi) ||
                const DeepCollectionEquality()
                    .equals(other.deskripsi, deskripsi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nama) ^
      const DeepCollectionEquality().hash(deskripsi);

  @JsonKey(ignore: true)
  @override
  $$_InfografisModelCopyWith<$_InfografisModel> get copyWith =>
      _$$_InfografisModelCopyWithImpl<$_InfografisModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$$_InfografisModelToJson(this);
  }
}

abstract class $_InfografisModel implements InfografisModel {
  const factory $_InfografisModel(
      {required int id,
      required Map<dynamic, dynamic> nama,
      required Map<dynamic, dynamic> deskripsi}) = _$$_InfografisModel;

  factory $_InfografisModel.fromJson(Map<String, dynamic> json) =
      _$$_InfografisModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get nama => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get deskripsi => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $$_InfografisModelCopyWith<$_InfografisModel> get copyWith =>
      throw _privateConstructorUsedError;
}
