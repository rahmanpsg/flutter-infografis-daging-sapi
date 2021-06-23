import 'package:freezed_annotation/freezed_annotation.dart';

part 'infografis_models.freezed.dart';
part 'infografis_models.g.dart';

@freezed
class InfografisModel with _$InfografisModel {
  const factory InfografisModel({
    required int id,
    required String namaIdn,
    required String namaEng,
  }) = $_InfografisModel;

  factory InfografisModel.fromJson(Map<String, dynamic> json) =>
      _$InfografisModelFromJson(json);
}
