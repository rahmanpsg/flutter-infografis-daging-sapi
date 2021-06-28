import 'package:freezed_annotation/freezed_annotation.dart';

part 'mitosFakta_models.freezed.dart';
part 'mitosFakta_models.g.dart';

@freezed
class MitosFaktaModel with _$MitosFaktaModel {
  const factory MitosFaktaModel({
    required int id,
    required Map mitos,
    required Map fakta,
  }) = $_MitosFaktaModel;

  factory MitosFaktaModel.fromJson(Map<String, dynamic> json) =>
      _$MitosFaktaModelFromJson(json);
}
