// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model_article_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModelArticleAuthor _$TravelModelArticleAuthorFromJson(
    Map<String, dynamic> json) {
  return TravelModelArticleAuthor()
    ..authorId = json['authorId'] as int
    ..nickName = json['nickName'] as String
    ..clientAuth = json['clientAuth'] as String
    ..jumpUrl = json['jumpUrl'] as String
    ..coverImage = json['coverImage'] == null
        ? null
        : TravelModelArticleAuthorCover.fromJson(
            json['coverImage'] as Map<String, dynamic>)
    ..identityType = json['identityType'] as int
    ..tag = json['tag'] as String;
}

Map<String, dynamic> _$TravelModelArticleAuthorToJson(
        TravelModelArticleAuthor instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'nickName': instance.nickName,
      'clientAuth': instance.clientAuth,
      'jumpUrl': instance.jumpUrl,
      'coverImage': instance.coverImage,
      'identityType': instance.identityType,
      'tag': instance.tag,
    };
