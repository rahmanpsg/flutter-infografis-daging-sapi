// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'olahan_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$_OlahanModel _$_$$_OlahanModelFromJson(Map<String, dynamic> json) {
  return _$$_OlahanModel(
    id: json['id'] as int,
    nama: json['nama'] as Map<String, dynamic>,
    imageUrl: json['imageUrl'] as String,
    bahan: json['bahan'] as Map<String, dynamic>,
    cara: json['cara'] as Map<String, dynamic>,
    porsi: json['porsi'] as int,
    gizi: json['gizi'] as Map<String, dynamic>,
    metode: json['metode'] as String,
  );
}

Map<String, dynamic> _$_$$_OlahanModelToJson(_$$_OlahanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'imageUrl': instance.imageUrl,
      'bahan': instance.bahan,
      'cara': instance.cara,
      'porsi': instance.porsi,
      'gizi': instance.gizi,
      'metode': instance.metode,
    };
