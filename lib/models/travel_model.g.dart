// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModel _$TravelModelFromJson(Map<String, dynamic> json) {
  return TravelModel()
    ..type = json['type'] as int
    ..article = json['article'] == null
        ? null
        : TravelModelArticle.fromJson(json['article'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TravelModelToJson(TravelModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'article': instance.article,
    };
