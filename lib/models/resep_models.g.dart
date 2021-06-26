// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resep_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$_ResepModel _$_$$_ResepModelFromJson(Map<String, dynamic> json) {
  return _$$_ResepModel(
    id: json['id'] as int,
    nama: json['nama'] as Map<String, dynamic>,
    imageUrl: json['imageUrl'] as String,
    bahan: json['bahan'] as Map<String, dynamic>,
    cara: json['cara'] as Map<String, dynamic>,
    porsi: json['porsi'] as int,
    gizi: json['gizi'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$$_ResepModelToJson(_$$_ResepModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'imageUrl': instance.imageUrl,
      'bahan': instance.bahan,
      'cara': instance.cara,
      'porsi': instance.porsi,
      'gizi': instance.gizi,
    };
