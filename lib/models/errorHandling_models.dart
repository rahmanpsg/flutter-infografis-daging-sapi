import 'package:freezed_annotation/freezed_annotation.dart';
part 'errorHandling_models.freezed.dart';

@freezed
class ErrorHandlingModel with _$ErrorHandlingModel {
  const factory ErrorHandlingModel({
    required bool status,
    required String value,
  }) = $_ErrorHandlingModel;
}
