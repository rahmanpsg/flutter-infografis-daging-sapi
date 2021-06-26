import 'package:freezed_annotation/freezed_annotation.dart';

part 'resep_models.freezed.dart';
part 'resep_models.g.dart';

@freezed
class ResepModel with _$ResepModel {
  const factory ResepModel({
    required int id,
    required Map nama,
    required String imageUrl,
    required Map bahan,
    required Map cara,
    required int porsi,
    required Map gizi,
  }) = $_ResepModel;

  factory ResepModel.fromJson(Map<String, dynamic> json) =>
      _$ResepModelFromJson(json);
}
