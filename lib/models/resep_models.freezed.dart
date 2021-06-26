// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'resep_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResepModel _$ResepModelFromJson(Map<String, dynamic> json) {
  return $_ResepModel.fromJson(json);
}

/// @nodoc
class _$ResepModelTearOff {
  const _$ResepModelTearOff();

  $_ResepModel call(
      {required int id,
      required Map<dynamic, dynamic> nama,
      required String imageUrl,
      required Map<dynamic, dynamic> bahan,
      required Map<dynamic, dynamic> cara,
      required int porsi,
      required Map<dynamic, dynamic> gizi}) {
    return $_ResepModel(
      id: id,
      nama: nama,
      imageUrl: imageUrl,
      bahan: bahan,
      cara: cara,
      porsi: porsi,
      gizi: gizi,
    );
  }

  ResepModel fromJson(Map<String, Object> json) {
    return ResepModel.fromJson(json);
  }
}

/// @nodoc
const $ResepModel = _$ResepModelTearOff();

/// @nodoc
mixin _$ResepModel {
  int get id => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get nama => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get bahan => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get cara => throw _privateConstructorUsedError;
  int get porsi => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get gizi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResepModelCopyWith<ResepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResepModelCopyWith<$Res> {
  factory $ResepModelCopyWith(
          ResepModel value, $Res Function(ResepModel) then) =
      _$ResepModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Map<dynamic, dynamic> nama,
      String imageUrl,
      Map<dynamic, dynamic> bahan,
      Map<dynamic, dynamic> cara,
      int porsi,
      Map<dynamic, dynamic> gizi});
}

/// @nodoc
class _$ResepModelCopyWithImpl<$Res> implements $ResepModelCopyWith<$Res> {
  _$ResepModelCopyWithImpl(this._value, this._then);

  final ResepModel _value;
  // ignore: unused_field
  final $Res Function(ResepModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? imageUrl = freezed,
    Object? bahan = freezed,
    Object? cara = freezed,
    Object? porsi = freezed,
    Object? gizi = freezed,
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
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bahan: bahan == freezed
          ? _value.bahan
          : bahan // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      cara: cara == freezed
          ? _value.cara
          : cara // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      porsi: porsi == freezed
          ? _value.porsi
          : porsi // ignore: cast_nullable_to_non_nullable
              as int,
      gizi: gizi == freezed
          ? _value.gizi
          : gizi // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
abstract class $$_ResepModelCopyWith<$Res>
    implements $ResepModelCopyWith<$Res> {
  factory $$_ResepModelCopyWith(
          $_ResepModel value, $Res Function($_ResepModel) then) =
      _$$_ResepModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Map<dynamic, dynamic> nama,
      String imageUrl,
      Map<dynamic, dynamic> bahan,
      Map<dynamic, dynamic> cara,
      int porsi,
      Map<dynamic, dynamic> gizi});
}

/// @nodoc
class _$$_ResepModelCopyWithImpl<$Res> extends _$ResepModelCopyWithImpl<$Res>
    implements $$_ResepModelCopyWith<$Res> {
  _$$_ResepModelCopyWithImpl(
      $_ResepModel _value, $Res Function($_ResepModel) _then)
      : super(_value, (v) => _then(v as $_ResepModel));

  @override
  $_ResepModel get _value => super._value as $_ResepModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? imageUrl = freezed,
    Object? bahan = freezed,
    Object? cara = freezed,
    Object? porsi = freezed,
    Object? gizi = freezed,
  }) {
    return _then($_ResepModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bahan: bahan == freezed
          ? _value.bahan
          : bahan // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      cara: cara == freezed
          ? _value.cara
          : cara // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      porsi: porsi == freezed
          ? _value.porsi
          : porsi // ignore: cast_nullable_to_non_nullable
              as int,
      gizi: gizi == freezed
          ? _value.gizi
          : gizi // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_ResepModel implements $_ResepModel {
  const _$$_ResepModel(
      {required this.id,
      required this.nama,
      required this.imageUrl,
      required this.bahan,
      required this.cara,
      required this.porsi,
      required this.gizi});

  factory _$$_ResepModel.fromJson(Map<String, dynamic> json) =>
      _$_$$_ResepModelFromJson(json);

  @override
  final int id;
  @override
  final Map<dynamic, dynamic> nama;
  @override
  final String imageUrl;
  @override
  final Map<dynamic, dynamic> bahan;
  @override
  final Map<dynamic, dynamic> cara;
  @override
  final int porsi;
  @override
  final Map<dynamic, dynamic> gizi;

  @override
  String toString() {
    return 'ResepModel(id: $id, nama: $nama, imageUrl: $imageUrl, bahan: $bahan, cara: $cara, porsi: $porsi, gizi: $gizi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is $_ResepModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nama, nama) ||
                const DeepCollectionEquality().equals(other.nama, nama)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.bahan, bahan) ||
                const DeepCollectionEquality().equals(other.bahan, bahan)) &&
            (identical(other.cara, cara) ||
                const DeepCollectionEquality().equals(other.cara, cara)) &&
            (identical(other.porsi, porsi) ||
                const DeepCollectionEquality().equals(other.porsi, porsi)) &&
            (identical(other.gizi, gizi) ||
                const DeepCollectionEquality().equals(other.gizi, gizi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nama) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(bahan) ^
      const DeepCollectionEquality().hash(cara) ^
      const DeepCollectionEquality().hash(porsi) ^
      const DeepCollectionEquality().hash(gizi);

  @JsonKey(ignore: true)
  @override
  $$_ResepModelCopyWith<$_ResepModel> get copyWith =>
      _$$_ResepModelCopyWithImpl<$_ResepModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$$_ResepModelToJson(this);
  }
}

abstract class $_ResepModel implements ResepModel {
  const factory $_ResepModel(
      {required int id,
      required Map<dynamic, dynamic> nama,
      required String imageUrl,
      required Map<dynamic, dynamic> bahan,
      required Map<dynamic, dynamic> cara,
      required int porsi,
      required Map<dynamic, dynamic> gizi}) = _$$_ResepModel;

  factory $_ResepModel.fromJson(Map<String, dynamic> json) =
      _$$_ResepModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get nama => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get bahan => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get cara => throw _privateConstructorUsedError;
  @override
  int get porsi => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic> get gizi => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $$_ResepModelCopyWith<$_ResepModel> get copyWith =>
      throw _privateConstructorUsedError;
}
