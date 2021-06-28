// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daging_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$_DagingModel _$_$$_DagingModelFromJson(Map<String, dynamic> json) {
  return _$$_DagingModel(
    id: json['id'] as int,
    idInfografis: json['idInfografis'] as int,
    nama: json['nama'] as Map<String, dynamic>,
    deskripsi: json['deskripsi'] as Map<String, dynamic>,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$$_DagingModelToJson(_$$_DagingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idInfografis': instance.idInfografis,
      'nama': instance.nama,
      'deskripsi': instance.deskripsi,
      'imageUrl': instance.imageUrl,
    };
