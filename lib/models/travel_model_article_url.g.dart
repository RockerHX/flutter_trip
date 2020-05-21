// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model_article_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModelArticleUrl _$TravelModelArticleUrlFromJson(
    Map<String, dynamic> json) {
  return TravelModelArticleUrl()
    ..version = json['version'] as String
    ..appUrl = json['appUrl'] as String
    ..h5Url = json['h5Url'] as String
    ..wxUrl = json['wxUrl'] as String;
}

Map<String, dynamic> _$TravelModelArticleUrlToJson(
        TravelModelArticleUrl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'appUrl': instance.appUrl,
      'h5Url': instance.h5Url,
      'wxUrl': instance.wxUrl,
    };
