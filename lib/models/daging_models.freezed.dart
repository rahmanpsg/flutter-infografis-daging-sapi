// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'daging_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DagingModel _$DagingModelFromJson(Map<String, dynamic> json) {
  return $_DagingModel.fromJson(json);
}

/// @nodoc
class _$DagingModelTearOff {
  const _$DagingModelTearOff();

  $_DagingModel call(
      {required int id,
      required int idInfografis,
      required Map<dynamic, dynamic> nama,
      required Map<dynamic, dynamic> deskripsi,
      required String imageUrl}) {
    return $_DagingModel(
      id: id,
      idInfografis: idInfografis,
      nama: nama,
      deskripsi: deskripsi,
      imageUrl: imageUrl,
    );
  }

  DagingModel fromJson(Map<String, Object> json) {
    return DagingModel.fromJson(json);
  }
}

/// @nodoc
const $DagingModel = _$DagingModelTearOff();

/// @nodoc
mixin _$DagingModel {
  int get id => throw _privateConstructorUsedError;
  int get idInfografis => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get nama => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get deskripsi => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DagingModelCopyWith<DagingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DagingModelCopyWith<$Res> {
  factory $DagingModelCopyWith(
          DagingModel value, $Res Function(DagingModel) then) =
      _$DagingModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int idInfografis,
      Map<dynamic, dynamic> nama,
      Map<dynamic, dynamic> deskripsi,
      String imageUrl});
}

/// @nodoc
class _$DagingModelCopyWithImpl<$Res> implements $DagingModelCopyWith<$Res> {
  _$DagingModelCopyWithImpl(this._value, this._then);

  final DagingModel _value;
  // ignore: unused_field
  final $Res Function(DagingModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idInfografis = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idInfografis: idInfografis == freezed
          ? _value.idInfografis
          : idInfografis // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $$_DagingModelCopyWith<$Res>
    implements $DagingModelCopyWith<$Res> {
  factory $$_DagingModelCopyWith(
          $_DagingModel value, $Res Function($_DagingModel) then) =
      _$$_DagingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int idInfografis,
      Map<dynamic, dynamic> nama,
      Map<dynamic, dynamic> deskripsi,
      String imageUrl});
}

/// @nodoc
class _$$_DagingModelCopyWithImpl<$Res> extends _$DagingModelCopyWithImpl<$Res>
    implements $$_DagingModelCopyWith<$Res> {
  _$$_DagingModelCopyWithImpl(
      $_DagingModel _value, $Res Function($_DagingModel) _then)
      : super(_value, (v) => _then(v as $_DagingModel));

  @override
  $_DagingModel get _value => super._value as $_DagingModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? idInfografis = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then($_DagingModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idInfografis: idInfografis == freezed
          ? _value.idInfografis
          : idInfografis // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      deskripsi: deskripsi == freezed
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_DagingModel implements $_DagingModel {
  const _$$_DagingModel(
      {required this.id,
      required this.idInfografis,
      required this.nama,
      required this.deskripsi,
      required this.imageUrl});

  factory _$$_DagingModel.fromJson(Map<String, dynamic> json) =>
      _$_$$_DagingModelFromJson(json);

  @override
  final int id;
  @override
  final int idInfografis;
  @override
  final Map<dynamic, dynamic> nama;
  @override
  final Map<dynamic, dynamic> deskripsi;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'DagingModel(id: $id, idInfografis: $idInfografis, nama: $nama, deskripsi: $deskripsi, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is $_DagingModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.idInfografis, idInfografis) ||
                const DeepCollectionEquality()
                    .equals(other.idInfografis, idInfografis)) &&
            (identical(other.nama, nama) ||
                const DeepCollectionEquality().equals(other.nama, nama)) &&
            (identical(other.deskripsi, deskripsi) ||
                const DeepCollectionEquality()
                    .equals(other.deskripsi, deskripsi)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(idInfografis) ^
      const DeepCollectionEquality().hash(nama) ^
      const DeepCollectionEquality().hash(deskripsi) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  $$_DagingModelCopyWith<$_DagingModel> get copyWith =>
      _$$_DagingModelCopyWithImpl<$_DagingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$$_DagingModelToJson(this);
  }
}

abstract class $_DagingModel implements DagingModel {
  const factory $_DagingModel(
      {required int id,
      required int idInfografis,
      required Map<dynamic, dynamic> nama,
      required Map<dynamic, dynamic> deskripsi,
      required String imageUrl}) = _$$_DagingModel;

  factory $_DagingModel.fromJson(Map<String, dynamic> json) =
      _$$_DagingModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get idInfografis => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get nama => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get deskripsi => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $$_DagingModelCopyWith<$_DagingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
