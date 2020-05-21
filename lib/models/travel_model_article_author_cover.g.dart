// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model_article_author_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModelArticleAuthorCover _$TravelModelArticleAuthorCoverFromJson(
    Map<String, dynamic> json) {
  return TravelModelArticleAuthorCover()
    ..articleId = json['articleId'] as int
    ..articleType = json['articleType'] as String
    ..productType = json['productType'] as int
    ..sourceType = json['sourceType'] as int
    ..articleTitle = json['articleTitle'] as String
    ..author = json['author'] as Map<String, dynamic>
    ..images = json['images'] as List
    ..hasVideo = json['hasVideo'] as bool
    ..readCount = json['readCount'] as int
    ..likeCount = json['likeCount'] as int
    ..commentCount = json['commentCount'] as int
    ..urls = json['urls'] as List
    ..tags = json['tags'] as List
    ..topics = json['topics'] as List
    ..pois = json['pois'] as List
    ..publishTime = json['publishTime'] as String
    ..publishTimeDisplay = json['publishTimeDisplay'] as String
    ..shootTime = json['shootTime'] as String
    ..shootTimeDisplay = json['shootTimeDisplay'] as String
    ..level = json['level'] as int
    ..distanceText = json['distanceText'] as String
    ..isLike = json['isLike'] as bool
    ..imageCounts = json['imageCounts'] as int
    ..isCollected = json['isCollected'] as bool
    ..collectCount = json['collectCount'] as int
    ..articleStatus = json['articleStatus'] as int
    ..poiName = json['poiName'] as String;
}

Map<String, dynamic> _$TravelModelArticleAuthorCoverToJson(
        TravelModelArticleAuthorCover instance) =>
    <String, dynamic>{
      'articleId': instance.articleId,
      'articleType': instance.articleType,
      'productType': instance.productType,
      'sourceType': instance.sourceType,
      'articleTitle': instance.articleTitle,
      'author': instance.author,
      'images': instance.images,
      'hasVideo': instance.hasVideo,
      'readCount': instance.readCount,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'urls': instance.urls,
      'tags': instance.tags,
      'topics': instance.topics,
      'pois': instance.pois,
      'publishTime': instance.publishTime,
      'publishTimeDisplay': instance.publishTimeDisplay,
      'shootTime': instance.shootTime,
      'shootTimeDisplay': instance.shootTimeDisplay,
      'level': instance.level,
      'distanceText': instance.distanceText,
      'isLike': instance.isLike,
      'imageCounts': instance.imageCounts,
      'isCollected': instance.isCollected,
      'collectCount': instance.collectCount,
      'articleStatus': instance.articleStatus,
      'poiName': instance.poiName,
    };
