import 'package:freezed_annotation/freezed_annotation.dart';

part 'olahan_models.freezed.dart';
part 'olahan_models.g.dart';

@freezed
class OlahanModel with _$OlahanModel {
  const factory OlahanModel({
    required int id,
    required Map nama,
    required String imageUrl,
    required Map bahan,
    required Map cara,
    required int porsi,
    required Map gizi,
    required String metode,
  }) = $_OlahanModel;

  factory OlahanModel.fromJson(Map<String, dynamic> json) =>
      _$OlahanModelFromJson(json);
}
