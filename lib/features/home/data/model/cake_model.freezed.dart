// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cake_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CakeModel _$CakeModelFromJson(Map<String, dynamic> json) {
  return _CakeModel.fromJson(json);
}

/// @nodoc
mixin _$CakeModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CakeModelCopyWith<CakeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CakeModelCopyWith<$Res> {
  factory $CakeModelCopyWith(CakeModel value, $Res Function(CakeModel) then) =
      _$CakeModelCopyWithImpl<$Res, CakeModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      double rating,
      String image});
}

/// @nodoc
class _$CakeModelCopyWithImpl<$Res, $Val extends CakeModel>
    implements $CakeModelCopyWith<$Res> {
  _$CakeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rating = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CakeModelCopyWith<$Res> implements $CakeModelCopyWith<$Res> {
  factory _$$_CakeModelCopyWith(
          _$_CakeModel value, $Res Function(_$_CakeModel) then) =
      __$$_CakeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      double rating,
      String image});
}

/// @nodoc
class __$$_CakeModelCopyWithImpl<$Res>
    extends _$CakeModelCopyWithImpl<$Res, _$_CakeModel>
    implements _$$_CakeModelCopyWith<$Res> {
  __$$_CakeModelCopyWithImpl(
      _$_CakeModel _value, $Res Function(_$_CakeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rating = null,
    Object? image = null,
  }) {
    return _then(_$_CakeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CakeModel implements _CakeModel {
  const _$_CakeModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.rating,
      required this.image});

  factory _$_CakeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CakeModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double rating;
  @override
  final String image;

  @override
  String toString() {
    return 'CakeModel(id: $id, title: $title, description: $description, rating: $rating, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CakeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, rating, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CakeModelCopyWith<_$_CakeModel> get copyWith =>
      __$$_CakeModelCopyWithImpl<_$_CakeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CakeModelToJson(
      this,
    );
  }
}

abstract class _CakeModel implements CakeModel {
  const factory _CakeModel(
      {required final String id,
      required final String title,
      required final String description,
      required final double rating,
      required final String image}) = _$_CakeModel;

  factory _CakeModel.fromJson(Map<String, dynamic> json) =
      _$_CakeModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  double get rating;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_CakeModelCopyWith<_$_CakeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
