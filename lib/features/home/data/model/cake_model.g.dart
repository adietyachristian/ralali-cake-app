// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cake_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CakeModel _$$_CakeModelFromJson(Map<String, dynamic> json) => _$_CakeModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toDouble(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_CakeModelToJson(_$_CakeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'image': instance.image,
    };
