import 'package:freezed_annotation/freezed_annotation.dart';

part 'daging_models.freezed.dart';
part 'daging_models.g.dart';

@freezed
class DagingModel with _$DagingModel {
  const factory DagingModel({
    required int id,
    required int idInfografis,
    required Map nama,
    required Map deskripsi,
    required String imageUrl,
  }) = $_DagingModel;

  factory DagingModel.fromJson(Map<String, dynamic> json) =>
      _$DagingModelFromJson(json);
}
