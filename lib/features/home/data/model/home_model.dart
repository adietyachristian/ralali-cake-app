import 'package:freezed_annotation/freezed_annotation.dart';

import 'cake_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required List<CakeModel> items,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
