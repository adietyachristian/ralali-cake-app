import 'package:freezed_annotation/freezed_annotation.dart';

part 'cake_model.freezed.dart';
part 'cake_model.g.dart';

@freezed
class CakeModel with _$CakeModel {
  const factory CakeModel({
    required String id,
    required String title,
    required String description,
    required double rating,
    required String image,
  }) = _CakeModel;

  factory CakeModel.fromJson(Map<String, dynamic> json) =>
      _$CakeModelFromJson(json);
}
