// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model_article_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModelArticleImage _$TravelModelArticleImageFromJson(
    Map<String, dynamic> json) {
  return TravelModelArticleImage()
    ..imageId = json['imageId'] as int
    ..dynamicUrl = json['dynamicUrl'] as String
    ..originalUrl = json['originalUrl'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..mediaType = json['mediaType'] as int
    ..isWaterMarked = json['isWaterMarked'] as bool;
}

Map<String, dynamic> _$TravelModelArticleImageToJson(
        TravelModelArticleImage instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'dynamicUrl': instance.dynamicUrl,
      'originalUrl': instance.originalUrl,
      'width': instance.width,
      'height': instance.height,
      'mediaType': instance.mediaType,
      'isWaterMarked': instance.isWaterMarked,
    };
