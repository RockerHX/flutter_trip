// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model_article_poi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModelArticlePoi _$TravelModelArticlePoiFromJson(
    Map<String, dynamic> json) {
  return TravelModelArticlePoi()
    ..poiType = json['poiType'] as int
    ..poiId = json['poiId'] as int
    ..poiName = json['poiName'] as String
    ..businessId = json['businessId'] as int
    ..districtId = json['districtId'] as int
    ..poiExt = json['poiExt'] == null
        ? null
        : TravelModelArticlePoiExt.fromJson(
            json['poiExt'] as Map<String, dynamic>)
    ..source = json['source'] as int
    ..isMain = json['isMain'] as int
    ..isInChina = json['isInChina'] as bool
    ..countryName = json['countryName'] as String;
}

Map<String, dynamic> _$TravelModelArticlePoiToJson(
        TravelModelArticlePoi instance) =>
    <String, dynamic>{
      'poiType': instance.poiType,
      'poiId': instance.poiId,
      'poiName': instance.poiName,
      'businessId': instance.businessId,
      'districtId': instance.districtId,
      'poiExt': instance.poiExt,
      'source': instance.source,
      'isMain': instance.isMain,
      'isInChina': instance.isInChina,
      'countryName': instance.countryName,
    };
