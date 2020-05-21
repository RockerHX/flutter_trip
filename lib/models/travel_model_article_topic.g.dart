// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model_article_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModelArticleTopic _$TravelModelArticleTopicFromJson(
    Map<String, dynamic> json) {
  return TravelModelArticleTopic()
    ..topicId = json['topicId'] as int
    ..topicName = json['topicName'] as String
    ..level = json['level'] as int;
}

Map<String, dynamic> _$TravelModelArticleTopicToJson(
        TravelModelArticleTopic instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'topicName': instance.topicName,
      'level': instance.level,
    };
